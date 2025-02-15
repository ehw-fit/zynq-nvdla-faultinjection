# 4. Software Design
To deploy sample applications from this repository, you must first compile [NVDLA UMD](https://github.com/nvdla/sw)
and [Tengine](https://github.com/OAID/Tengine). (For Tengine, use the Tengine Lite release v1.5 for NVDLA.)
NVDLA UMD has two parts, UMD runtime and UMD compiler. Tengine needed libraries from both parts.
All these steps can be done on Zynq to avoid complications with cross-compilation.

## 4.1 Required libraries
The UMD runtime part requires the jpeg library version 6b. It can be obtained from [here](https://sourceforge.net/projects/libjpeg/files/libjpeg/6b/).
See the README from the archive for more information about compiling. Then replace the old `libjpeg.a` in `umd/external`
with the new one.

It's also possible to use jpeg library version 9. In this case, you need to replace `jpeglib.h`, `jmorecfg.h` and
`jconfig.h` in `umd/external/include` with new ones from version 9. And also replace `umd/apps/runtime/DlaImageUtils.cpp`
line 196 to
```c++
jpeg_read_header(&info, TRUE);
```

The UMD compiler part required the protobuf library version 2.6. It's source code can be found in the NVDLA sw repo in
`umd/external/protobuf-2.6`.
It can be compiled with:
```shell
./autogen.sh 
./configure
make -j `nproc`
```

After successful compilation, the `libprotobuf.a` library will be in the `src/.libs` folder. Copy the library file to
`umd/apps/compiler/`.

Tengine requires [OpenCV 4.2.0](https://github.com/opencv/opencv/releases/tag/4.2.0). The easiest way is to get OpenCV
from the package repository.  Otherwise, you have to compile it yourself.

## 4.2 NVDLA UMD
To build NVDLA UMD libraries compatible with Tengine, it's necessary to change the C++ flag in the Makefile for both,
compiler and runtime, from `-fno-rtti` to `-frtti`. (For compiler `umd/core/src/compiler/Makefile` and for runtime
`umd/core/src/runtime/Makefile`.)

To compile the NVDLA UMD compiler, go to the compiler folder `umd/core/src/compiler` and run these commands:
```shell
export TOP=$(pwd)
make compiler TOOLCHAIN_PREFIX=/usr/bin/ -j `nproc`
```

Compiling the NVDLA UMD runtime is similar. Go to the `umd/core/src/runtime` folder and run:
```shell
export TOP=$(pwd)
make runtime TOOLCHAIN_PREFIX=/usr/bin/ -j `nproc`
```

## 4.3 Tengine
Download Tengine source code, use the release for [NVDLA](https://github.com/OAID/Tengine/releases/tag/lite-v1.5-nvdla).

It's necessary to copy all necessary files from NVDLA UMD to Tengine source code.

Copy the contents of these folders to :
- `sw/umd/core/include` into `tengine/source/device/opendla`.
- `sw/umd/core/src/common/include/priv` into `tengine/source/device/opendla/common/priv`
- `sw/umd/core/src/runtime/include/priv` into `tengine/source/device/opendla/runtime/priv`
- `sw/umd/core/src/compiler/include/priv` into `tengine/source/device/opendla/compiler/priv`

Then copy those files:
- `sw/umd/out/core/src/compiler/libnvdla_compiler/libnvdla_compiler.so` into `tengine/source/device/opendla/lib/`
- `sw/umd/out/core/src/runtime/libnvdla_runtime/libnvdla_runtime.so` into `tengine/source/device/opendla/lib/`
- `sw/umd/external/protobuf-2.6/libprotobuf.a` into `tengine/source/device/opendla/lib/`

Then create a `build` folder in the Tengine source. Then go into the folder and run these commands to compile:
```shell
cmake .. -DTENGINE_ENABLE_OPENDLA=ON
```

To build selected examples, use:
```shell
cmake --build . --target tm_classification_opendla --parallel `nproc`
```

> **_NOTE:_** Make sure the opendla kernel module is loaded before running the example. The command to load the module is `sudo insmod /lib/modules/4.19.0-xilinx-v2019.1/extra/opendla.ko`.

## 4.4 Compilation of example app from this repository
The easiest way to compile a example application from this repository is to replace the original Tengine example with
the required application source code. After that, run cmake command to build again and example application will be built.

## Chapters
- [Chapter 1: NVLDA Fault Injection Introduction](./introduction.md)
- [Chapter 2: Hardware Design](./hardware.md)
- [Chapter 3: PetaLinux Preparation](./petalinux.md)
- [Chapter 4: Software Design](./software.md) (this chapter)
- [Chapter 5: Applications in this repository](./applications.md)