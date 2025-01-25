/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * License); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * AS IS BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

/*
 * Copyright (c) 2020, OPEN AI LAB
 * Author: qtang@openailab.com
 */

/*
 * 2024 Modified by Filip Masar
 * Run classification on reduced part (100 per class) of CIFAR-10 dataset
 * Classification with fault injection
 * NVDLA small INT8
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <time.h>
#include <errno.h>

#include "common.h"
#include "tengine/c_api.h"
#include "tengine_operations.h"

#define DEFAULT_IMG_H        224
#define DEFAULT_IMG_W        224
#define DEFAULT_SCALE1       0.017f
#define DEFAULT_SCALE2       0.017f
#define DEFAULT_SCALE3       0.017f
#define DEFAULT_MEAN1        104.007
#define DEFAULT_MEAN2        116.669
#define DEFAULT_MEAN3        122.679
#define DEFAULT_LOOP_COUNT   1
#define DEFAULT_THREAD_COUNT 1

#define NUMBER_OF_CLASSES 10
#define NUMBER_OF_SAMPLES 100

#define MMAP_SIZE 4

// Single fault injection device
typedef struct
{
    // file descriptor
    int fd;
    // pointer from mmap
    uint32_t* ptr;
} im_single_device_t;

// Struct for keeping pointer to each fault injection device
typedef struct
{
    // fi value which is routed into each MAC unit (18 bits)
    im_single_device_t fi_mux_fdata_in;
    // nit mask for selecting which bit of fi value should be injected (18 bits)
    im_single_device_t fi_mux_fsel_in;
    // bit mask selection of which multiplier the fi should be performed in (partition ma) (32 bits)
    im_single_device_t fi_mux_sel_a;
    // bit mask selection of which multiplier the fi should be performed in (partition mb) (32 bits)
    im_single_device_t fi_mux_sel_b;
} im_devices_t;

// Source: https://stackoverflow.com/a/1157217 by caf
/* msleep(): Sleep for the requested number of milliseconds. */
int msleep(long msec)
{
    struct timespec ts;
    int res;

    if (msec < 0)
    {
        errno = EINVAL;
        return -1;
    }

    ts.tv_sec = msec / 1000;
    ts.tv_nsec = (msec % 1000) * 1000000;

    do {
        res = nanosleep(&ts, &ts);
    } while (res && errno == EINTR);

    return res;
}
// END

// Map one uio device into memory
int fi_init_single_device(im_single_device_t* fi_dev, char* device_name)
{
    fi_dev->fd = 0;
    fi_dev->ptr = 0;

    fi_dev->fd = open(device_name, O_RDWR | O_SYNC);
    if (fi_dev->fd <= 0)
    {
        perror("uioctl");
        fprintf(stderr, "Error while opening %s!\n", device_name);
        return 1;
    }

    fi_dev->ptr = (uint32_t*)mmap(0, MMAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fi_dev->fd, 0);
    if (fi_dev->ptr == MAP_FAILED)
    {
        perror("mmap");
        fprintf(stderr, "Error, mmap failed!\n");
        close(fi_dev->fd);
        fi_dev->fd = 0;
        return 2;
    }

    return 0;
}

// Initialize all fault injection devices
int fi_init_devices(im_devices_t* fi_devs)
{
    fi_devs->fi_mux_fdata_in.fd = 0;
    fi_devs->fi_mux_fdata_in.ptr = 0;
    fi_devs->fi_mux_fsel_in.fd = 0;
    fi_devs->fi_mux_fsel_in.ptr = 0;
    fi_devs->fi_mux_sel_a.fd = 0;
    fi_devs->fi_mux_sel_a.ptr = 0;
    fi_devs->fi_mux_sel_b.fd = 0;
    fi_devs->fi_mux_sel_b.ptr = 0;

    if (fi_init_single_device(&fi_devs->fi_mux_fdata_in, "/dev/uio4") != 0) return 1;
    if (fi_init_single_device(&fi_devs->fi_mux_fsel_in, "/dev/uio5") != 0) return 1;
    if (fi_init_single_device(&fi_devs->fi_mux_sel_a, "/dev/uio6") != 0) return 1;
    if (fi_init_single_device(&fi_devs->fi_mux_sel_b, "/dev/uio7") != 0) return 1;

    return 0;
}

// Unmap one uio device from memory
void fi_close_single_devices(im_single_device_t* fi_dev)
{
    if (fi_dev->fd > 0)
    {
        if (fi_dev->ptr > 0)
        {
            munmap(fi_dev->ptr, MMAP_SIZE);
            fi_dev->ptr = 0;
        }
        close(fi_dev->fd);
        fi_dev->fd = 0;
    }
}

// Close all fault injection devices
void fi_close_devices(im_devices_t* fi_devs)
{
    fi_close_single_devices(&fi_devs->fi_mux_fdata_in);
    fi_close_single_devices(&fi_devs->fi_mux_fsel_in);
    fi_close_single_devices(&fi_devs->fi_mux_sel_a);
    fi_close_single_devices(&fi_devs->fi_mux_sel_b);
}

// Perform fault injection
void fi_write_data(im_devices_t* fi_devs, uint32_t fdata, uint32_t fsel, uint32_t sel_a, uint32_t sel_b)
{
    *fi_devs->fi_mux_fdata_in.ptr = fdata;
    *fi_devs->fi_mux_fsel_in.ptr = fsel;
    *fi_devs->fi_mux_sel_a.ptr = sel_a;
    *fi_devs->fi_mux_sel_b.ptr = sel_b;
}

// Get image data with scale calculation
void get_input_int8_data(const char* image_file, int8_t* input_data, int img_h, int img_w, float* mean, float* scale,
                         float input_scale)
{
    image img = imread_process(image_file, img_w, img_h, mean, scale);

    float* image_data = (float*)img.data;

    for (int i = 0; i < img_w * img_h * 3; i++)
    {
        int idata = (round)(image_data[i] / input_scale);
        if (idata > 127)
            idata = 127;
        else if (idata < -127)
            idata = -127;

        input_data[i] = idata;
    }

    free_image(img);
}

// Prepare tengine graph from mode
graph_t prepare_graph(const char* model_file)
{
    /* inital tengine */
    if (init_tengine() != 0)
    {
        fprintf(stderr, "Initial tengine failed.\n");
        return 0;
    }
    fprintf(stderr, "tengine-lite library version: %s\n", get_tengine_version());

    context_t odla_context = create_context("odla", 1);
    int rtt = set_context_device(odla_context, "OPENDLA", NULL, 0);
    if (0 > rtt)
    {
        fprintf(stderr, " add_context_device VSI DEVICE failed.\n");
        return 0;
    }
    /* create graph, load tengine model xxx.tmfile */
    graph_t graph = create_graph(odla_context, "tengine", model_file);
    if (NULL == graph)
    {
        fprintf(stderr, "Create graph failed.\n");
        return 0;
    }

    return graph;
}

// Input tensor for image
tensor_t prepare_input_tensor(graph_t graph, int img_h, int img_w)
{
    tensor_t input_tensor = get_graph_input_tensor(graph, 0, 0);
    if (input_tensor == NULL)
    {
        fprintf(stderr, "Get input tensor failed\n");
        return 0;
    }

    int dims[] = {1, 3, img_h, img_w}; // nchw
    if (set_tensor_shape(input_tensor, dims, 4) < 0)
    {
        fprintf(stderr, "Set input tensor shape failed\n");
        return 0;
    }

    return input_tensor;
}

// Get the id of highest rated class
int get_top_result(int8_t* data, int total_num)
{
    int8_t max = INT8_MIN;
    int max_id = -1;
    for (int i = 0; i < total_num; i++)
    {
        if (data[i] > max)
        {
            max = data[i];
            max_id = i;
        }
    }

    return max_id;
}

// Parse next line from fault injection csv file
int read_injection_settings(FILE* fp, uint32_t* fdata_in, uint32_t* fsel_in, uint32_t* sel_a, uint32_t* sel_b)
{
    char cache[256];
    if (fgets(cache, sizeof(cache), fp) == NULL) return 0;

    char* fi_mux_fdata_in = strtok(cache, ",");
    if (fi_mux_fdata_in == 0) return 0;
    char* fi_mux_fsel_in = strtok(NULL, ",");
    if (fi_mux_fsel_in == 0) return 0;
    char* fi_mux_sel_a = strtok(NULL, ",");
    if (fi_mux_sel_a == 0) return 0;
    char* fi_mux_sel_b = strtok(NULL, ",");
    if (fi_mux_sel_b == 0) return 0;

    *fdata_in = strtol(fi_mux_fdata_in, NULL, 0);
    *fsel_in = strtol(fi_mux_fsel_in, NULL, 0);
    *sel_a = strtol(fi_mux_sel_a, NULL, 0);
    *sel_b = strtol(fi_mux_sel_b, NULL, 0);

    return 1;
}

// Perform classification for each image with fault injection
int tengine_classify(const char* model_file, const char* collection_path, int img_h, int img_w, float* mean, float* scale,
                     int loop_count, int num_thread, const char* inject_settings_file, const char* output_data_file)
{
    /* set runtime options */
    struct options opt;
    opt.num_thread = num_thread;
    opt.cluster = TENGINE_CLUSTER_ALL;
    opt.precision = TENGINE_MODE_INT8;
    opt.affinity = 0;

    FILE* is_fp = fopen(inject_settings_file, "r");
    if (is_fp == NULL)
    {
        perror("Unable to open file with fault injection settings!");
        return -2;
    }

    FILE* od_fp = fopen(output_data_file, "w");
    if (od_fp == NULL)
    {
        perror("Unable to open file for writing output data!");
        return -2;
    }

    // Initialization of fi devices
    im_devices_t fi_devices;
    if (fi_init_devices(&fi_devices) != 0)
    {
        perror("Unable to open fault injection !");
        return -2;
    }

    /* create graph, load tengine model xxx.tmfile */
    double start_prep = get_current_time();
    graph_t graph = prepare_graph(model_file);

    /* set the input shape to initial the graph, and prerun graph to infer shape */
    int img_size = img_h * img_w * 3;
    int8_t* input_data = (int8_t*)malloc(img_size);

    tensor_t input_tensor = prepare_input_tensor(graph, img_h, img_w);

    if (prerun_graph_multithread(graph, opt) < 0)
    {
        fprintf(stderr, "Prerun multithread graph failed.\n");
        return -1;
    }
    double end_prep = get_current_time();
    double cur_prep = end_prep - start_prep;

    /* prepare process input data, set the data mem to input tensor */
    float input_scale = 0.f;
    int input_zero_point = 0;
    get_tensor_quant_param(input_tensor, &input_scale, &input_zero_point, 1);

    double min_time = DBL_MAX;
    double max_time = DBL_MIN;
    double total_time = 0.;
    char image_file[500];

    uint32_t fdata_in = 0;
    uint32_t fsel_in = 0;
    uint32_t sel_a = 0;
    uint32_t sel_b = 0;

    // Get accuracy for each fi configuration in input file
    while (read_injection_settings(is_fp, &fdata_in, &fsel_in, &sel_a, &sel_b))
    {
        int success_count = 0;
        int failed_count = 0;
        fi_write_data(&fi_devices, fdata_in, fsel_in, sel_a, sel_b);  // Inject fault
        msleep(100);  // Wait to ensure that fault is correctly injected
        // Perform classification for each image to get network accuracy
        for (int class = 0; class < NUMBER_OF_CLASSES; class ++)
        {
            for (int sample = 1; sample <= NUMBER_OF_SAMPLES; sample++)
            {
                switch (class)
                {
                case 0:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "airplane/", sample, ".png");
                    break;
                case 1:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "automobile/", sample, ".png");
                    break;
                case 2:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "bird/", sample, ".png");
                    break;
                case 3:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "cat/", sample, ".png");
                    break;
                case 4:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "deer/", sample, ".png");
                    break;
                case 5:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "dog/", sample, ".png");
                    break;
                case 6:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "frog/", sample, ".png");
                    break;
                case 7:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "horse/", sample, ".png");
                    break;
                case 8:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "ship/", sample, ".png");
                    break;
                case 9:
                    sprintf(image_file, "%s%s%04d%s", collection_path, "truck/", sample, ".png");
                    break;
                }

                // get input data
                get_input_int8_data(image_file, input_data, img_h, img_w, mean, scale, input_scale);
                if (set_tensor_buffer(input_tensor, input_data, img_size) < 0)
                {
                    fprintf(stderr, "Set input tensor buffer failed\n");
                    return -1;
                }

                // Run network on NVDLA
                double start = get_current_time();
                if (run_graph(graph, 1) < 0)
                {
                    fprintf(stderr, "Run graph failed\n");
                    return -1;
                }
                double end = get_current_time();
                double cur = end - start;
                total_time += cur;
                if (min_time > cur)
                    min_time = cur;
                if (max_time < cur)
                    max_time = cur;
                /* get the result of classification */
                tensor_t output_tensor = get_graph_output_tensor(graph, 0, 0);
                int8_t* output_i8 = (int8_t*)get_tensor_buffer(output_tensor);
                int output_size = get_tensor_buffer_size(output_tensor);

                int top = get_top_result(output_i8, output_size);
                if (top == class)
                    success_count++;
                else
                    failed_count++;
                release_graph_tensor(output_tensor);
            }
        }
        fprintf(stderr, "Success: %d Failed: %d Rate %f %%\n", success_count, failed_count, (float)success_count / (NUMBER_OF_CLASSES * NUMBER_OF_SAMPLES) * 100);
        fprintf(od_fp, "%#08x,%#08x,%#08x,%#08x,%05d,%05d\n", fdata_in, fsel_in, sel_a, sel_b, success_count, failed_count);
    }
    fprintf(stderr, "\nmodel file : %s\n", model_file);
    fprintf(stderr, "image file : %s\n", collection_path);
    fprintf(stderr, "img_h, img_w, scale[3], mean[3] : %d %d , %.3f %.3f %.3f, %.1f %.1f %.1f\n", img_h, img_w,
            scale[0], scale[1], scale[2], mean[0], mean[1], mean[2]);
    fprintf(stderr, "Repeat %d times, thread %d, avg time %.2f ms, max_time %.2f ms, min_time %.2f ms\n", loop_count,
            num_thread, total_time / loop_count, max_time, min_time);
    fprintf(od_fp, "0x00000000,0x00000000,0x00000000,0x00000000,%f,%f,%f,%f\n", cur_prep, total_time, max_time, min_time);
    fprintf(stderr, "--------------------------------------\n");

    fprintf(stderr, "--------------------------------------\n");

    fclose(is_fp);
    fclose(od_fp);
    /* release tengine */
    free(input_data);
    release_graph_tensor(input_tensor);
    postrun_graph(graph);
    destroy_graph(graph);
    release_tengine();
    fi_close_devices(&fi_devices);

    return 0;
}

void show_usage()
{
    fprintf(
        stderr,
        "[Usage]:  [-h]\n    [-m model_file] [-i image_file]\n [-g img_h,img_w] [-s scale[0],scale[1],scale[2]] [-w "
        "mean[0],mean[1],mean[2]] [-r loop_count] [-t thread_count] [-f fault_injection_csv] [-d output_csv]\n");
    fprintf(
        stderr,
        "\nresnet18 example: \n    ./classification -m /path/to/resnet18.tmfile -i /path/to/CIFAR10/ -g 32,32 -s "
        "0.017,0.017,0.017 -w 104.007,116.669,122.679 -f /path/to/fault_injection.csv -f /path/to/output.csv\n");
}

int main(int argc, char* argv[])
{
    int loop_count = DEFAULT_LOOP_COUNT;
    int num_thread = DEFAULT_THREAD_COUNT;
    char* model_file = NULL;
    char* image_file = NULL;
    float img_hw[2] = {0.f};
    int img_h = 0;
    int img_w = 0;
    float mean[3] = {-1.f, -1.f, -1.f};
    float scale[3] = {0.f, 0.f, 0.f};

    char* inject_settings_file = NULL;
    char* output_data_file = NULL;

    int res;
    while ((res = getopt(argc, argv, "m:i:f:d:l:g:s:w:r:t:h")) != -1)
    {
        switch (res)
        {
        case 'm':
            model_file = optarg;
            break;
        case 'i':
            image_file = optarg;
            break;
        case 'f':
            inject_settings_file = optarg;
            break;
        case 'd':
            output_data_file = optarg;
            break;
        case 'g':
            split(img_hw, optarg, ",");
            img_h = (int)img_hw[0];
            img_w = (int)img_hw[1];
            break;
        case 's':
            split(scale, optarg, ",");
            break;
        case 'w':
            split(mean, optarg, ",");
            break;
        case 'r':
            loop_count = atoi(optarg);
            break;
        case 't':
            num_thread = atoi(optarg);
            break;
        case 'h':
            show_usage();
            return 0;
        default:
            break;
        }
    }

    /* check files */
    if (model_file == NULL)
    {
        fprintf(stderr, "Error: Tengine model file not specified!\n");
        show_usage();
        return -1;
    }

    if (image_file == NULL)
    {
        fprintf(stderr, "Error: Image file not specified!\n");
        show_usage();
        return -1;
    }

    if (!check_file_exist(model_file) || !check_file_exist(image_file))
        return -1;

    if (img_h == 0)
    {
        img_h = DEFAULT_IMG_H;
        fprintf(stderr, "Image height not specified, use default %d\n", img_h);
    }

    if (img_w == 0)
    {
        img_w = DEFAULT_IMG_W;
        fprintf(stderr, "Image width not specified, use default  %d\n", img_w);
    }

    if (scale[0] == 0.f || scale[1] == 0.f || scale[2] == 0.f)
    {
        scale[0] = DEFAULT_SCALE1;
        scale[1] = DEFAULT_SCALE2;
        scale[2] = DEFAULT_SCALE3;
        fprintf(stderr, "Scale value not specified, use default  %.3f, %.3f, %.3f\n", scale[0], scale[1], scale[2]);
    }

    if (mean[0] == -1.0 || mean[1] == -1.0 || mean[2] == -1.0)
    {
        mean[0] = DEFAULT_MEAN1;
        mean[1] = DEFAULT_MEAN2;
        mean[2] = DEFAULT_MEAN3;
        fprintf(stderr, "Mean value not specified, use default   %.1f, %.1f, %.1f\n", mean[0], mean[1], mean[2]);
    }

    if (tengine_classify(model_file, image_file, img_h, img_w, mean, scale, loop_count, num_thread, inject_settings_file, output_data_file) < 0)
        return -1;

    return 0;
}
