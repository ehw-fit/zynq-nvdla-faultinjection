vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_12
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/axi_apb_bridge_v3_0_17
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_26
vlib modelsim_lib/msim/microblaze_v11_0_9
vlib modelsim_lib/msim/lmb_v10_v3_0_12
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_21
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/iomodule_v3_1_8
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_28
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_25
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_26

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 modelsim_lib/msim/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap axi_apb_bridge_v3_0_17 modelsim_lib/msim/axi_apb_bridge_v3_0_17
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_26 modelsim_lib/msim/axi_register_slice_v2_1_26
vmap microblaze_v11_0_9 modelsim_lib/msim/microblaze_v11_0_9
vmap lmb_v10_v3_0_12 modelsim_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_21
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap iomodule_v3_1_8 modelsim_lib/msim/iomodule_v3_1_8
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 modelsim_lib/msim/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 modelsim_lib/msim/axi_data_fifo_v2_1_25
vmap axi_protocol_converter_v2_1_26 modelsim_lib/msim/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_17 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/c0b5/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_apb_bridge_0_0/sim/design_1_axi_apb_bridge_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_26 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \

vcom -work microblaze_v11_0_9 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_0/sim/bd_45eb_microblaze_I_0.vhd" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_1/sim/bd_45eb_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_2/sim/bd_45eb_ilmb_0.vhd" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_3/sim/bd_45eb_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_4/sim/bd_45eb_dlmb_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_5/sim/bd_45eb_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_6/sim/bd_45eb_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_7/sim/bd_45eb_second_dlmb_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_8/sim/bd_45eb_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_9/sim/bd_45eb_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_8 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/b8f2/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/ip/ip_10/sim/bd_45eb_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/bd_0/sim/bd_45eb.v" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_0/sim/design_1_ddr4_0_0_microblaze_mcs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/phy/design_1_ddr4_0_0_phy_ddr4.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/ip_top/design_1_ddr4_0_0_phy.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/controller/ddr4_v2_2_mc.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ui/ddr4_v2_2_ui.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_ar_channel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_aw_channel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_b_channel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_arbiter.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_fsm.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_translator.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_fifo.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_incr_cmd.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_r_channel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_w_channel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wr_cmd_fsm.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wrap_cmd.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_a_upsizer.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_register_slice.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_upsizer.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_axic_register_slice.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_and.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_and.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_or.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_or.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_command_fifo.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel_static.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_r_upsizer.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi/ddr4_v2_2_w_upsizer.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_addr_decode.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_read.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg_bank.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_top.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_write.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top/design_1_ddr4_0_0_ddr4.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top/design_1_ddr4_0_0_ddr4_mem_intfc.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal/design_1_ddr4_0_0_ddr4_cal_riu.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top/design_1_ddr4_0_0.sv" \
"../../../bd/design_1/ip/design_1_ddr4_0_0/tb/design_1_ddr4_0_0_microblaze_mcs_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/sim/bd_88fd.v" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_0/sim/bd_88fd_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_1/sim/bd_88fd_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_2/sim/bd_88fd_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_3/sim/bd_88fd_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_4/sim/bd_88fd_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_5/sim/bd_88fd_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_6/sim/bd_88fd_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_7/sim/bd_88fd_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_8/sim/bd_88fd_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_9/sim/bd_88fd_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_10/sim/bd_88fd_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_11/sim/bd_88fd_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/bd_0/ip/ip_12/sim/bd_88fd_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_1_0/sim/design_1_smartconnect_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_1_0/sim/design_1_proc_sys_reset_1_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_2_0/sim/design_1_axi_gpio_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_3_0/sim/design_1_axi_gpio_3_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/sim/bd_880d.v" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_0/sim/bd_880d_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_1/sim/bd_880d_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_2/sim/bd_880d_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_3/sim/bd_880d_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_4/sim/bd_880d_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_5/sim/bd_880d_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_6/sim/bd_880d_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_7/sim/bd_880d_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_8/sim/bd_880d_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_9/sim/bd_880d_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_10/sim/bd_880d_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_11/sim/bd_880d_boutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_12/sim/bd_880d_arni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_13/sim/bd_880d_rni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_14/sim/bd_880d_awni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_15/sim/bd_880d_wni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_16/sim/bd_880d_bni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_17/sim/bd_880d_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_18/sim/bd_880d_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_19/sim/bd_880d_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_20/sim/bd_880d_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_21/sim/bd_880d_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_22/sim/bd_880d_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_23/sim/bd_880d_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_24/sim/bd_880d_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_25/sim/bd_880d_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_26/sim/bd_880d_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_27/sim/bd_880d_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_28/sim/bd_880d_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_29/sim/bd_880d_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_30/sim/bd_880d_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_31/sim/bd_880d_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_32/sim/bd_880d_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_33/sim/bd_880d_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_34/sim/bd_880d_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_35/sim/bd_880d_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_36/sim/bd_880d_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_37/sim/bd_880d_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_38/sim/bd_880d_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_39/sim/bd_880d_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_40/sim/bd_880d_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_41/sim/bd_880d_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_42/sim/bd_880d_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_43/sim/bd_880d_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_44/sim/bd_880d_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_45/sim/bd_880d_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_46/sim/bd_880d_m02e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_47/sim/bd_880d_m03s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_48/sim/bd_880d_m03arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_49/sim/bd_880d_m03rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_50/sim/bd_880d_m03awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_51/sim/bd_880d_m03wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_52/sim/bd_880d_m03bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/bd_0/ip/ip_53/sim/bd_880d_m03e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_2_0/sim/design_1_smartconnect_2_0.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/HLS_cdp_icvt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/HLS_cdp_ocvt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/MUX2D4.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/MUX2HDD2.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_BLKBOX_SRC0.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_CLK_gate_power.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_CALC_int8.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_assembly_buffer.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_assembly_ctrl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_calculator.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_delivery_buffer.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_delivery_ctrl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_dual_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_regfile.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_single_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_CACC_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_CVT_cell.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_DC_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_IMG_ctrl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_IMG_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_IMG_pack.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_IMG_sg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_IMG_sg2pack_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_WT_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_cvt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_dc.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_dma_mux.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_dual_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_img.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_regfile.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_shared_buffer.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_single_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_status.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_CDMA_wt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_INTP_unit.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_LUT_CTRL_unit.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_LUT_ctrl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_MUL_unit.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_bufferin_tp1.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_cvtin.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_cvtout.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_intp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_lut.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_mul.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_nan.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_sum.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_DP_syncfifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_RDMA_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_dp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_rdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_CDP_wdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cfgrom/NV_NVDLA_CFGROM_rom.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_active.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_cfg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_mac.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_rt_in.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_rt_out.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_CORE_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_core.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_CMAC_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csb_master/NV_NVDLA_CSB_MASTER_csb2falcon_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csb_master/NV_NVDLA_CSB_MASTER_falcon2csb_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_SG_dat_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_SG_wt_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_WL_dec.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_dl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_dual_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_regfile.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_sg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_single_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_CSC_wl.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_DMAIF_rdreq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_DMAIF_rdrsp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_DMAIF_wr.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/glb/NV_NVDLA_GLB_CSB_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/glb/NV_NVDLA_GLB_csb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/glb/NV_NVDLA_GLB_ic.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_NVDLA_HLS_saturate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_NVDLA_HLS_shiftleftsu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_NVDLA_HLS_shiftrightsatsu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/NV_NVDLA_HLS_shiftrightsu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_MCIF_CSB_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_MCIF_csb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_IG_arb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_IG_bpt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_IG_cvt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_IG_spt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_READ_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_IG_arb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_IG_bpt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_IG_cvt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_IG_spt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_WRITE_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_read.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_DRAM_write.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_NOCIF_dram.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_CORE_cal1d.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_CORE_cal2d.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_CORE_preproc.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_CORE_unit1d.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_RDMA_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_WDMA_cmd.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_WDMA_dat.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_core.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_nan.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_rdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_slcg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_PDP_wdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_BRDMA_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_BRDMA_gate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_BRDMA_lat_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_CORE_gate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_CORE_pack.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_CORE_unpack.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_C_int.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_X_int_alu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_X_int_mul.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_X_int_relu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_X_int_trt.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_c.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_prelu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_relu.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_sync2data.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_x1_int.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_HLS_x2_int.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_EG_cmd.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_EG_din.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_EG_dout.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_gate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_MRDMA_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_NRDMA_cq.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_NRDMA_gate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_NRDMA_lat_fifo.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_EG_ro.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_dmaif.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_eg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_ig.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_pack.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_RDMA_unpack.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_REG_dual.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_REG_single.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_DAT_in.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_DAT_out.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_cmd.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_dat.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_gate.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_WDMA_intr.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_brdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_cmux.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_core.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_mrdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_nrdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_rdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_reg.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_SDP_wdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/nocif/NV_NVDLA_XXIF_libs.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/apb2csb/NV_NVDLA_apb2csb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cacc/NV_NVDLA_cacc.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cbuf/NV_NVDLA_cbuf.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdma/NV_NVDLA_cdma.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/NV_NVDLA_cdp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cfgrom/NV_NVDLA_cfgrom.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/NV_NVDLA_cmac.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/car/NV_NVDLA_core_reset.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csb_master/NV_NVDLA_csb_master.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/csc/NV_NVDLA_csc.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/glb/NV_NVDLA_glb.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_NVDLA_partition_a.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_NVDLA_partition_c.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_NVDLA_partition_m.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_NVDLA_partition_o.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_NVDLA_partition_p.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/pdp/NV_NVDLA_pdp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/car/NV_NVDLA_reset.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/sdp/NV_NVDLA_sdp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/car/NV_NVDLA_sync3d.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/car/NV_NVDLA_sync3d_c.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/car/NV_NVDLA_sync3d_s.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/top/NV_nvdla.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/OR2D1.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cmac/fault_injection_mux.v" \
"../../../bd/design_1/ipshared/49a3/vmod/nvdla/cdp/int_sum_block_tp1.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_128x18.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_16x256.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_16x272.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_16x64.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_256x3.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_256x64.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rws_256x7.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_128x11.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_128x6.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_160x16.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_160x65.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_61x65.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_80x14.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_80x65.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsp_8x65.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwst_256x8.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsthp_19x4.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsthp_60x21.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsthp_80x15.v" \
"../../../bd/design_1/ipshared/49a3/vmod/rams/fpga/small_rams/nv_ram_rwsthp_80x9.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/oneHotClk_async_read_clock.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/oneHotClk_async_write_clock.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/p_SSYNC2DO_C_PP.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/p_SSYNC3DO.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/p_SSYNC3DO_C_PPP.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/p_SSYNC3DO_S_PPP.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/p_STRICTSYNC3DOTM_C_PPP.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/sync3d.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/sync3d_c_ppp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/sync3d_s_ppp.v" \
"../../../bd/design_1/ipshared/49a3/vmod/vlibs/sync_reset.v" \
"../../../bd/design_1/ipshared/49a3/RTL/NV_nvdla_wrapper.v" \
"../../../bd/design_1/ip/design_1_NV_nvdla_wrapper_0_0/sim/design_1_NV_nvdla_wrapper_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93 \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26 -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/8cdf/hdl" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../bd/design_1/ipshared/49a3/vmod/include" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/ip_top" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ip/design_1_ddr4_0_0/rtl/cal" "+incdir+../../../../nvdla_zcu104.gen/sources_1/bd/design_1/ipshared/49a3/vmod/include" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

