# 2. Hardware Design
# 2.1 RTL Generation
### 2.1.1 Environment Setup and RTL Generation
There is an official [Environment Setup Guide](http://nvdla.org/hw/v2/environment_setup_guide.html) for NVDLA RTL generation.

You will need to obtain source code for the NVDLA small configuration.
```shell
git clone https://github.com/nvdla/hw
git checkout nv_small
```

Then environment configuration is required with the `make` command. RTL generation is not so dependent on a specific tool version.
For example these tools and version were used for project:
```
- cpp/gcc/g++ - gcc (GCC) 12.2.1 20230201
- perl - revision 5 version 36 subversion 0
- java - openjdk 20.0.1 2023-04-18
- python - Python 3.10.10
- clang - clang version 15.0.7
```

RTL can then be generated.
```shell
./tools/bin/tmake -build vmod
```

The RTL output files can be found in the `out/nv_small/vmod` directory.

> **_NOTE:_** There is also an unofficial Docker Image with a prepared environment [farhanaslam/nvdla](https://hub.docker.com/r/farhanaslam/nvdla).

### 2.1.2 Modification of the RTL for FPGA
NVDLA is designed for ASIC, which means it also has RTL for internal RAM. This is unwanted because on FPGA the RAM block
is mapped to LUT instead of BRAM. The easiest way to do this is to delete the `synth` directory in `out/nv_small/vmod/rams`.

## 2.2 RTL modification for fault injection
To enable fault injection, the source file with MAC unit has been modified (in [cmac](../hw/nvdla_zcu104.ip_user_files/bd/design_1/ipshared/49a3/vmod/nvdla/cmac)
folder file [NV_NVDLA_CMAC_CORE_mac. v](../hw/nvdla_zcu104.ip_user_files/bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_mac.v)).
The output of each multiplier has been routed to a new fi module [fault_injection_mux.v](../hw/nvdla_zcu104.ip_user_files/bd/design_1/ipshared/49a3/vmod/nvdla/cmac/fault_injection_mux.v),
which exports the modified signal back to the MAC unit for subsequent accumulation.

This results in the creation of new control signals.
```verilog
input [18-1:0] fi_mux_fdata_in,
input [18-1:0] fi_mux_fsel_in,
input [32-1:0] fi_mux_sel_a,
input [32-1:0] fi_mux_sel_b
```

## 2.3 Vivado Hardware Design
Vivado 2022.1 was used.

These Verilog options were used to port the NVDLA to FPGA:
```
VLIB_BYPASS_POWER_CG
NV_FPGA_FIFOGEN
FIFOGEN_MASTER_CLK_GATING_DISABLED
FPGA = 1
SYNTHESIS
DISABLE_TESTPOINTS
NV_SYNTHESIS
DESIGNWARE_NOEXIST = 1
RAM_DISABLE_POWER_GATING_FPGA
```

The NVDLA uses the CSB interface for processor communication. Since there is no CSB to AXI converter, the CSB to APB
converter from the NVDLA source code was used. The wrapper for it was used from [Lei Wang's blog post](https://leiblog.wang/NVDLA-Xilinx-FPGA-Mapping/#1-2-1-csb2apb).
And APB was converted to AXI using the converter available in Vivado.

The resulting block design includes these main sections
- Fault injection (red)
- NVDLA (green)
- External memory (purple)

The FI control signals are routed to the AXI GPIO IP core to allow software control of the FI.

![block_design](../img/block_design.png)

Address mapping is as follows:
![address_editor](../img/address_editor.png)

Due to the use of different Vivado and PetaLinux versions, the hardware description must be exported in the old HDF
format using the command:
```shell
write_hwdef -force -file <location>/filename.hdf
```

## 2.4 FPGA Utilization

| Resource | Available |   No FI | Constant FI | SW driven FI |
|----------|----------:|--------:|------------:|-------------:|
| LUT      |   230 400 |  94 438 |      94 456 |       96 081 |
| LUTRAM   |   101 760 |   5 112 |       5 112 |        5 113 |
| FF       |   460 800 | 104 732 |     104 717 |      106 150 |
| BRAM     |       312 |   91.50 |       91.50 |        91.50 |
| DSP      |      1728 |      35 |          35 |           35 |

## Chapters
- [Chapter 1: NVLDA Fault Injection Introduction](./introduction.md)
- [Chapter 2: Hardware Design](./hardware.md) (this chapter)
- [Chapter 3: PetaLinux Preparation](./petalinux.md)
- [Chapter 4: Software Design](./software.md)
- [Chapter 5: Applications in this repository](./applications.md)