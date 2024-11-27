// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:NV_nvdla_wrapper:1.0
// IP Revision: 9

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_NV_nvdla_wrapper_0_0 (
  core_clk,
  csb_clk,
  rstn,
  csb_rstn,
  dla_intr,
  nvdla_core2dbb_aw_awvalid,
  nvdla_core2dbb_aw_awready,
  nvdla_core2dbb_aw_awid,
  nvdla_core2dbb_aw_awlen,
  nvdla_core2dbb_aw_awsize,
  nvdla_core2dbb_aw_awaddr,
  nvdla_core2dbb_w_wvalid,
  nvdla_core2dbb_w_wready,
  nvdla_core2dbb_w_wdata,
  nvdla_core2dbb_w_wstrb,
  nvdla_core2dbb_w_wlast,
  nvdla_core2dbb_ar_arvalid,
  nvdla_core2dbb_ar_arready,
  nvdla_core2dbb_ar_arid,
  nvdla_core2dbb_ar_arlen,
  nvdla_core2dbb_ar_arsize,
  nvdla_core2dbb_ar_araddr,
  nvdla_core2dbb_b_bvalid,
  nvdla_core2dbb_b_bready,
  nvdla_core2dbb_b_bid,
  nvdla_core2dbb_r_rvalid,
  nvdla_core2dbb_r_rready,
  nvdla_core2dbb_r_rid,
  nvdla_core2dbb_r_rlast,
  nvdla_core2dbb_r_rdata,
  m_axi_awburst,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_awprot,
  m_axi_awqos,
  m_axi_awuser,
  m_axi_wuser,
  m_axi_bresp,
  m_axi_buser,
  m_axi_arburst,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_arprot,
  m_axi_arqos,
  m_axi_aruser,
  m_axi_rresp,
  m_axi_ruser,
  psel,
  penable,
  pwrite,
  paddr,
  pwdata,
  prdata,
  pready,
  pslverr,
  fi_mux_fdata_in,
  fi_mux_fsel_in,
  fi_mux_sel_a,
  fi_mux_sel_b
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, ASSOCIATED_RESET rstn, ASSOCIATED_BUSIF m_axi, FREQ_HZ 187500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *)
input wire core_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME csb_clk, ASSOCIATED_RESET csb_rstn, FREQ_HZ 187500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 csb_clk CLK" *)
input wire csb_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME csb_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 csb_rstn RST" *)
input wire csb_rstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dla_intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 dla_intr INTERRUPT" *)
output wire dla_intr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire nvdla_core2dbb_aw_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire nvdla_core2dbb_aw_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *)
output wire [7 : 0] nvdla_core2dbb_aw_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [3 : 0] nvdla_core2dbb_aw_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] nvdla_core2dbb_aw_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [63 : 0] nvdla_core2dbb_aw_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire nvdla_core2dbb_w_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire nvdla_core2dbb_w_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [63 : 0] nvdla_core2dbb_w_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [7 : 0] nvdla_core2dbb_w_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire nvdla_core2dbb_w_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire nvdla_core2dbb_ar_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire nvdla_core2dbb_ar_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *)
output wire [7 : 0] nvdla_core2dbb_ar_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [3 : 0] nvdla_core2dbb_ar_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] nvdla_core2dbb_ar_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [63 : 0] nvdla_core2dbb_ar_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire nvdla_core2dbb_b_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire nvdla_core2dbb_b_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *)
input wire [7 : 0] nvdla_core2dbb_b_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire nvdla_core2dbb_r_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire nvdla_core2dbb_r_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *)
input wire [7 : 0] nvdla_core2dbb_r_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire nvdla_core2dbb_r_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [63 : 0] nvdla_core2dbb_r_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *)
output wire [3 : 0] m_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWUSER" *)
output wire m_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WUSER" *)
output wire m_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BUSER" *)
input wire m_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *)
output wire [3 : 0] m_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARUSER" *)
output wire m_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 187500000, ID_WIDTH 8, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RUSER" *)
input wire m_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PSEL" *)
input wire psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PENABLE" *)
input wire penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PWRITE" *)
input wire pwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PADDR" *)
input wire [31 : 0] paddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PWDATA" *)
input wire [31 : 0] pwdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PRDATA" *)
output wire [31 : 0] prdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PREADY" *)
output wire pready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 s_apb PSLVERR" *)
output wire pslverr;
input wire [17 : 0] fi_mux_fdata_in;
input wire [17 : 0] fi_mux_fsel_in;
input wire [31 : 0] fi_mux_sel_a;
input wire [31 : 0] fi_mux_sel_b;

  NV_nvdla_wrapper inst (
    .core_clk(core_clk),
    .csb_clk(csb_clk),
    .rstn(rstn),
    .csb_rstn(csb_rstn),
    .dla_intr(dla_intr),
    .nvdla_core2dbb_aw_awvalid(nvdla_core2dbb_aw_awvalid),
    .nvdla_core2dbb_aw_awready(nvdla_core2dbb_aw_awready),
    .nvdla_core2dbb_aw_awid(nvdla_core2dbb_aw_awid),
    .nvdla_core2dbb_aw_awlen(nvdla_core2dbb_aw_awlen),
    .nvdla_core2dbb_aw_awsize(nvdla_core2dbb_aw_awsize),
    .nvdla_core2dbb_aw_awaddr(nvdla_core2dbb_aw_awaddr),
    .nvdla_core2dbb_w_wvalid(nvdla_core2dbb_w_wvalid),
    .nvdla_core2dbb_w_wready(nvdla_core2dbb_w_wready),
    .nvdla_core2dbb_w_wdata(nvdla_core2dbb_w_wdata),
    .nvdla_core2dbb_w_wstrb(nvdla_core2dbb_w_wstrb),
    .nvdla_core2dbb_w_wlast(nvdla_core2dbb_w_wlast),
    .nvdla_core2dbb_ar_arvalid(nvdla_core2dbb_ar_arvalid),
    .nvdla_core2dbb_ar_arready(nvdla_core2dbb_ar_arready),
    .nvdla_core2dbb_ar_arid(nvdla_core2dbb_ar_arid),
    .nvdla_core2dbb_ar_arlen(nvdla_core2dbb_ar_arlen),
    .nvdla_core2dbb_ar_arsize(nvdla_core2dbb_ar_arsize),
    .nvdla_core2dbb_ar_araddr(nvdla_core2dbb_ar_araddr),
    .nvdla_core2dbb_b_bvalid(nvdla_core2dbb_b_bvalid),
    .nvdla_core2dbb_b_bready(nvdla_core2dbb_b_bready),
    .nvdla_core2dbb_b_bid(nvdla_core2dbb_b_bid),
    .nvdla_core2dbb_r_rvalid(nvdla_core2dbb_r_rvalid),
    .nvdla_core2dbb_r_rready(nvdla_core2dbb_r_rready),
    .nvdla_core2dbb_r_rid(nvdla_core2dbb_r_rid),
    .nvdla_core2dbb_r_rlast(nvdla_core2dbb_r_rlast),
    .nvdla_core2dbb_r_rdata(nvdla_core2dbb_r_rdata),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awqos(m_axi_awqos),
    .m_axi_awuser(m_axi_awuser),
    .m_axi_wuser(m_axi_wuser),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_buser(m_axi_buser),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arqos(m_axi_arqos),
    .m_axi_aruser(m_axi_aruser),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_ruser(m_axi_ruser),
    .psel(psel),
    .penable(penable),
    .pwrite(pwrite),
    .paddr(paddr),
    .pwdata(pwdata),
    .prdata(prdata),
    .pready(pready),
    .pslverr(pslverr),
    .fi_mux_fdata_in(fi_mux_fdata_in),
    .fi_mux_fsel_in(fi_mux_fsel_in),
    .fi_mux_sel_a(fi_mux_sel_a),
    .fi_mux_sel_b(fi_mux_sel_b)
  );
endmodule
