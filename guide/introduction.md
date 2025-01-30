# 1. Introduction
## 1.1 Abstract
This is a brief guide how to set up hardware and software parts for fault injection testing of NVDLA on FPGA.

## 1.2 Recommended Hardware
- [Zynq UltraScale+ MPSoC ZCU104 Evaluation Kit](https://www.xilinx.com/products/boards-and-kits/zcu104.html)
- 4 GB DDR4 SO-DIMM memory module for Zynq

## 1.3 Recommended Software
- Hardware design: Vivado 2022.1 (Ubuntu LTS 20.04)
- Linux Kernel compilation: PetaLinux 2019.1 (Ubuntu LTS 18.04)
- Zynq Linux root filesystem: Modified Debian 10.13 (Ubuntu with same kernel version is also possible)

## 1.4 Limitations
### 1.4.1 Hardware Limitations
The RTL for NVDLA was generated using the with [nv_small.spec](https://github.com/fmasar/nvdla_hw/blob/nv_small/spec/defs/nv_small.spec)
specification, hence there are the relevant [restrictions](http://nvdla.org/hw/v1/hwarch.html#small-nvdla-implementation-example).

### 1.4.2 Software Limitations
The NVDLA KMD part, which contains the Linux kernel module, is only compatible (after a small modification) with
kernels up to 4.19. This means that you cannot use newer PetaLinux than 2019. It also means that you can't use
the official Ubuntu release for ZCU104, because the oldest version is Ubuntu 20.04 LTS arm64 with kernel 5.4.
However, you can use Linux kernel from PetaLinux and replace the original root filesystem with an older version of
Debian/Ubuntu.