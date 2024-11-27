// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_CORE_mac.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
`define DESIGNWARE_NOEXIST 1
module NV_NVDLA_CMAC_CORE_mac (
   nvdla_core_clk //|< i
  ,nvdla_wg_clk //|< i
  ,nvdla_core_rstn //|< i
  ,cfg_is_wg //|< i
  ,cfg_reg_en //|< i
  ,dat_actv_data //|< i
  ,dat_actv_nz //|< i
  ,dat_actv_pvld //|< i
  ,wt_actv_data //|< i
  ,wt_actv_nz //|< i
  ,wt_actv_pvld //|< i
  ,mac_out_data //|> o
  ,mac_out_pvld //|> o
  ,fi_mux_fdata_in //|< i
  ,fi_mux_fsel_in //|< i
  ,fi_mux_sel //|< i
  );
input nvdla_core_clk;
input nvdla_wg_clk;
input nvdla_core_rstn;
input cfg_is_wg;
input cfg_reg_en;
input [8*8 -1:0] dat_actv_data;
input [8 -1:0] dat_actv_nz;
input [8 -1:0] dat_actv_pvld;
input [8*8 -1:0] wt_actv_data;
input [8 -1:0] wt_actv_nz;
input [8 -1:0] wt_actv_pvld;
output [19 -1:0] mac_out_data;
output mac_out_pvld;
input [18 -1:0] fi_mux_fdata_in;
input [18 -1:0] fi_mux_fsel_in;
input [8 -1:0] fi_mux_sel;
////////////////// unpack data&nz //////////////
//: for(my $i=0; $i<8; $i++){
//: my $bpe = 8;
//: my $data_msb = ($i+1) * $bpe - 1;
//: my $data_lsb = $i * $bpe;
//: print qq(
//: wire [${bpe}-1:0] wt_actv_data${i} = wt_actv_data[${data_msb}:${data_lsb}];
//: wire [${bpe}-1:0] dat_actv_data${i} = dat_actv_data[${data_msb}:${data_lsb}];
//: wire wt_actv_nz${i} = wt_actv_nz[${i}];
//: wire dat_actv_nz${i} = dat_actv_nz[${i}];
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8-1:0] wt_actv_data0 = wt_actv_data[7:0];
wire [8-1:0] dat_actv_data0 = dat_actv_data[7:0];
wire wt_actv_nz0 = wt_actv_nz[0];
wire dat_actv_nz0 = dat_actv_nz[0];

wire [8-1:0] wt_actv_data1 = wt_actv_data[15:8];
wire [8-1:0] dat_actv_data1 = dat_actv_data[15:8];
wire wt_actv_nz1 = wt_actv_nz[1];
wire dat_actv_nz1 = dat_actv_nz[1];

wire [8-1:0] wt_actv_data2 = wt_actv_data[23:16];
wire [8-1:0] dat_actv_data2 = dat_actv_data[23:16];
wire wt_actv_nz2 = wt_actv_nz[2];
wire dat_actv_nz2 = dat_actv_nz[2];

wire [8-1:0] wt_actv_data3 = wt_actv_data[31:24];
wire [8-1:0] dat_actv_data3 = dat_actv_data[31:24];
wire wt_actv_nz3 = wt_actv_nz[3];
wire dat_actv_nz3 = dat_actv_nz[3];

wire [8-1:0] wt_actv_data4 = wt_actv_data[39:32];
wire [8-1:0] dat_actv_data4 = dat_actv_data[39:32];
wire wt_actv_nz4 = wt_actv_nz[4];
wire dat_actv_nz4 = dat_actv_nz[4];

wire [8-1:0] wt_actv_data5 = wt_actv_data[47:40];
wire [8-1:0] dat_actv_data5 = dat_actv_data[47:40];
wire wt_actv_nz5 = wt_actv_nz[5];
wire dat_actv_nz5 = dat_actv_nz[5];

wire [8-1:0] wt_actv_data6 = wt_actv_data[55:48];
wire [8-1:0] dat_actv_data6 = dat_actv_data[55:48];
wire wt_actv_nz6 = wt_actv_nz[6];
wire dat_actv_nz6 = dat_actv_nz[6];

wire [8-1:0] wt_actv_data7 = wt_actv_data[63:56];
wire [8-1:0] dat_actv_data7 = dat_actv_data[63:56];
wire wt_actv_nz7 = wt_actv_nz[7];
wire dat_actv_nz7 = dat_actv_nz[7];

//| eperl: generated_end (DO NOT EDIT ABOVE)
`ifdef DESIGNWARE_NOEXIST
wire signed [19 -1:0] sum_out;
wire [8 -1:0] op_out_pvld;
//: my $mul_result_width = 18;
//: my $bpe = 8;
//: my $rwidth = 19;
//: my $result_width = $rwidth * 8 * 2;
//: for (my $i=0; $i < 8; ++$i) {
//: print "assign op_out_pvld[${i}] = wt_actv_pvld[${i}] & dat_actv_pvld[${i}] & wt_actv_nz${i} & dat_actv_nz${i};\n";
//: print "wire signed [${mul_result_width}-1:0] mout_$i = (\$signed(wt_actv_data${i}) * \$signed(dat_actv_data${i})) & \$signed({${mul_result_width}{op_out_pvld[${i}]}});\n";
//: }
//:
//: print "assign sum_out = \n";
//: for (my $i=0; $i < 8; ++$i) {
//: print "    ";
//: print "+ " if ($i != 0);
//: print "mout_$i\n";
//: }
//: print "; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign op_out_pvld[0] = wt_actv_pvld[0] & dat_actv_pvld[0] & wt_actv_nz0 & dat_actv_nz0;
wire signed [18-1:0] mout_0 = ($signed(wt_actv_data0) * $signed(dat_actv_data0));
assign op_out_pvld[1] = wt_actv_pvld[1] & dat_actv_pvld[1] & wt_actv_nz1 & dat_actv_nz1;
wire signed [18-1:0] mout_1 = ($signed(wt_actv_data1) * $signed(dat_actv_data1));
assign op_out_pvld[2] = wt_actv_pvld[2] & dat_actv_pvld[2] & wt_actv_nz2 & dat_actv_nz2;
wire signed [18-1:0] mout_2 = ($signed(wt_actv_data2) * $signed(dat_actv_data2));
assign op_out_pvld[3] = wt_actv_pvld[3] & dat_actv_pvld[3] & wt_actv_nz3 & dat_actv_nz3;
wire signed [18-1:0] mout_3 = ($signed(wt_actv_data3) * $signed(dat_actv_data3));
assign op_out_pvld[4] = wt_actv_pvld[4] & dat_actv_pvld[4] & wt_actv_nz4 & dat_actv_nz4;
wire signed [18-1:0] mout_4 = ($signed(wt_actv_data4) * $signed(dat_actv_data4));
assign op_out_pvld[5] = wt_actv_pvld[5] & dat_actv_pvld[5] & wt_actv_nz5 & dat_actv_nz5;
wire signed [18-1:0] mout_5 = ($signed(wt_actv_data5) * $signed(dat_actv_data5));
assign op_out_pvld[6] = wt_actv_pvld[6] & dat_actv_pvld[6] & wt_actv_nz6 & dat_actv_nz6;
wire signed [18-1:0] mout_6 = ($signed(wt_actv_data6) * $signed(dat_actv_data6));
assign op_out_pvld[7] = wt_actv_pvld[7] & dat_actv_pvld[7] & wt_actv_nz7 & dat_actv_nz7;
wire signed [18-1:0] mout_7 = ($signed(wt_actv_data7) * $signed(dat_actv_data7));

// --------------------------------- Fault injection start ---------------------------------
wire signed [18-1:0] m_mout_0;
wire signed [18-1:0] m_mout_1;
wire signed [18-1:0] m_mout_2;
wire signed [18-1:0] m_mout_3;
wire signed [18-1:0] m_mout_4;
wire signed [18-1:0] m_mout_5;
wire signed [18-1:0] m_mout_6;
wire signed [18-1:0] m_mout_7;

fault_injection_mux fi_mux_0 (
.cdata_in (mout_0) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[0]) //|< i
,.out (m_mout_0) //|< o
);

fault_injection_mux fi_mux_1 (
.cdata_in (mout_1) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[1]) //|< i
,.out (m_mout_1) //|< o
);

fault_injection_mux fi_mux_2 (
.cdata_in (mout_2) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[2]) //|< i
,.out (m_mout_2) //|< o
);

fault_injection_mux fi_mux_3 (
.cdata_in (mout_3) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[3]) //|< i
,.out (m_mout_3) //|< o
);

fault_injection_mux fi_mux_4 (
.cdata_in (mout_4) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[4]) //|< i
,.out (m_mout_4) //|< o
);

fault_injection_mux fi_mux_5 (
.cdata_in (mout_5) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[5]) //|< i
,.out (m_mout_5) //|< o
);

fault_injection_mux fi_mux_6 (
.cdata_in (mout_6) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[6]) //|< i
,.out (m_mout_6) //|< o
);

fault_injection_mux fi_mux_7 (
.cdata_in (mout_7) //|< i
,.fdata_in (fi_mux_fdata_in) //|< i
,.fsel_in (fi_mux_fsel_in) //|< i
,.sel (fi_mux_sel[7]) //|< i
,.out (m_mout_7) //|< o
);
// --------------------------------- Fault injection end ---------------------------------

wire signed [18-1:0] m_mout_0_v = m_mout_0 & $signed({18{op_out_pvld[0]}});
wire signed [18-1:0] m_mout_1_v = m_mout_1 & $signed({18{op_out_pvld[1]}});
wire signed [18-1:0] m_mout_2_v = m_mout_2 & $signed({18{op_out_pvld[2]}});
wire signed [18-1:0] m_mout_3_v = m_mout_3 & $signed({18{op_out_pvld[3]}});
wire signed [18-1:0] m_mout_4_v = m_mout_4 & $signed({18{op_out_pvld[4]}});
wire signed [18-1:0] m_mout_5_v = m_mout_5 & $signed({18{op_out_pvld[5]}});
wire signed [18-1:0] m_mout_6_v = m_mout_6 & $signed({18{op_out_pvld[6]}});
wire signed [18-1:0] m_mout_7_v = m_mout_7 & $signed({18{op_out_pvld[7]}});

assign sum_out = 
    m_mout_0_v
    + m_mout_1_v
    + m_mout_2_v
    + m_mout_3_v
    + m_mout_4_v
    + m_mout_5_v
    + m_mout_6_v
    + m_mout_7_v
; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
`endif
`ifndef DESIGNWARE_NOEXIST
wire [19 -1:0] sum_out;
wire [19*8*2-1:0] full_mul_result;
wire [8 -1:0] op_out_pvld;
//: my $mul_result_width = 18;
//: my $bpe = 8;
//: my $rwidth = 19;
//: for (my $i=0; $i < 8; ++$i) {
//: my $j = $i * 2;
//: my $k = $i * 2 + 1;
//: print qq(
//: wire [$mul_result_width-1:0] mout_$j;
//: wire [$mul_result_width-1:0] mout_$k;
//: DW02_multp #(${bpe}, ${bpe}, $mul_result_width) mul$i (
//: .a(wt_actv_data${i}),
//: .b(dat_actv_data${i}),
//: .tc(1'b1),
//: .out0(mout_${j}),
//: .out1(mout_${k})
//: );
//: assign op_out_pvld[${i}] = wt_actv_pvld[${i}] & dat_actv_pvld[${i}] & wt_actv_nz${i} & dat_actv_nz${i};
//: );
//:
//: my $offset = $j * $rwidth;
//: my $sign_extend_bits = 19 - $mul_result_width;
//: print qq(
//: assign full_mul_result[$offset + $rwidth - 1 : $offset] = {{${sign_extend_bits}{mout_${j}[${mul_result_width}-1]}}, mout_$j} & {${rwidth}{op_out_pvld[$i]}}; );
//: $offset = $k * $rwidth;
//: print qq(
//: assign full_mul_result[$offset + $rwidth - 1 : $offset] = {{${sign_extend_bits}{mout_${k}[${mul_result_width}-1]}}, mout_$k} & {${rwidth}{op_out_pvld[$i]}}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [18-1:0] mout_0;
wire [18-1:0] mout_1;
DW02_multp #(8, 8, 18) mul0 (
.a(wt_actv_data0),
.b(dat_actv_data0),
.tc(1'b1),
.out0(mout_0),
.out1(mout_1)
);
assign op_out_pvld[0] = wt_actv_pvld[0] & dat_actv_pvld[0] & wt_actv_nz0 & dat_actv_nz0;

assign full_mul_result[0 + 19 - 1 : 0] = {{1{mout_0[18-1]}}, mout_0} & {19{op_out_pvld[0]}}; 
assign full_mul_result[19 + 19 - 1 : 19] = {{1{mout_1[18-1]}}, mout_1} & {19{op_out_pvld[0]}}; 
wire [18-1:0] mout_2;
wire [18-1:0] mout_3;
DW02_multp #(8, 8, 18) mul1 (
.a(wt_actv_data1),
.b(dat_actv_data1),
.tc(1'b1),
.out0(mout_2),
.out1(mout_3)
);
assign op_out_pvld[1] = wt_actv_pvld[1] & dat_actv_pvld[1] & wt_actv_nz1 & dat_actv_nz1;

assign full_mul_result[38 + 19 - 1 : 38] = {{1{mout_2[18-1]}}, mout_2} & {19{op_out_pvld[1]}}; 
assign full_mul_result[57 + 19 - 1 : 57] = {{1{mout_3[18-1]}}, mout_3} & {19{op_out_pvld[1]}}; 
wire [18-1:0] mout_4;
wire [18-1:0] mout_5;
DW02_multp #(8, 8, 18) mul2 (
.a(wt_actv_data2),
.b(dat_actv_data2),
.tc(1'b1),
.out0(mout_4),
.out1(mout_5)
);
assign op_out_pvld[2] = wt_actv_pvld[2] & dat_actv_pvld[2] & wt_actv_nz2 & dat_actv_nz2;

assign full_mul_result[76 + 19 - 1 : 76] = {{1{mout_4[18-1]}}, mout_4} & {19{op_out_pvld[2]}}; 
assign full_mul_result[95 + 19 - 1 : 95] = {{1{mout_5[18-1]}}, mout_5} & {19{op_out_pvld[2]}}; 
wire [18-1:0] mout_6;
wire [18-1:0] mout_7;
DW02_multp #(8, 8, 18) mul3 (
.a(wt_actv_data3),
.b(dat_actv_data3),
.tc(1'b1),
.out0(mout_6),
.out1(mout_7)
);
assign op_out_pvld[3] = wt_actv_pvld[3] & dat_actv_pvld[3] & wt_actv_nz3 & dat_actv_nz3;

assign full_mul_result[114 + 19 - 1 : 114] = {{1{mout_6[18-1]}}, mout_6} & {19{op_out_pvld[3]}}; 
assign full_mul_result[133 + 19 - 1 : 133] = {{1{mout_7[18-1]}}, mout_7} & {19{op_out_pvld[3]}}; 
wire [18-1:0] mout_8;
wire [18-1:0] mout_9;
DW02_multp #(8, 8, 18) mul4 (
.a(wt_actv_data4),
.b(dat_actv_data4),
.tc(1'b1),
.out0(mout_8),
.out1(mout_9)
);
assign op_out_pvld[4] = wt_actv_pvld[4] & dat_actv_pvld[4] & wt_actv_nz4 & dat_actv_nz4;

assign full_mul_result[152 + 19 - 1 : 152] = {{1{mout_8[18-1]}}, mout_8} & {19{op_out_pvld[4]}}; 
assign full_mul_result[171 + 19 - 1 : 171] = {{1{mout_9[18-1]}}, mout_9} & {19{op_out_pvld[4]}}; 
wire [18-1:0] mout_10;
wire [18-1:0] mout_11;
DW02_multp #(8, 8, 18) mul5 (
.a(wt_actv_data5),
.b(dat_actv_data5),
.tc(1'b1),
.out0(mout_10),
.out1(mout_11)
);
assign op_out_pvld[5] = wt_actv_pvld[5] & dat_actv_pvld[5] & wt_actv_nz5 & dat_actv_nz5;

assign full_mul_result[190 + 19 - 1 : 190] = {{1{mout_10[18-1]}}, mout_10} & {19{op_out_pvld[5]}}; 
assign full_mul_result[209 + 19 - 1 : 209] = {{1{mout_11[18-1]}}, mout_11} & {19{op_out_pvld[5]}}; 
wire [18-1:0] mout_12;
wire [18-1:0] mout_13;
DW02_multp #(8, 8, 18) mul6 (
.a(wt_actv_data6),
.b(dat_actv_data6),
.tc(1'b1),
.out0(mout_12),
.out1(mout_13)
);
assign op_out_pvld[6] = wt_actv_pvld[6] & dat_actv_pvld[6] & wt_actv_nz6 & dat_actv_nz6;

assign full_mul_result[228 + 19 - 1 : 228] = {{1{mout_12[18-1]}}, mout_12} & {19{op_out_pvld[6]}}; 
assign full_mul_result[247 + 19 - 1 : 247] = {{1{mout_13[18-1]}}, mout_13} & {19{op_out_pvld[6]}}; 
wire [18-1:0] mout_14;
wire [18-1:0] mout_15;
DW02_multp #(8, 8, 18) mul7 (
.a(wt_actv_data7),
.b(dat_actv_data7),
.tc(1'b1),
.out0(mout_14),
.out1(mout_15)
);
assign op_out_pvld[7] = wt_actv_pvld[7] & dat_actv_pvld[7] & wt_actv_nz7 & dat_actv_nz7;

assign full_mul_result[266 + 19 - 1 : 266] = {{1{mout_14[18-1]}}, mout_14} & {19{op_out_pvld[7]}}; 
assign full_mul_result[285 + 19 - 1 : 285] = {{1{mout_15[18-1]}}, mout_15} & {19{op_out_pvld[7]}}; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
DW02_sum #(8*2, 19) fsum (.INPUT(full_mul_result), .SUM(sum_out));
`endif
//add pipeline for retiming
wire pp_pvld_d0 = (dat_actv_pvld[0] & wt_actv_pvld[0]);
//wire [19 -1:0] sum_out_d0 = $unsigned(sum_out);
wire [19 -1:0] sum_out_d0 = sum_out;
//: my $rwidth = 19;
//: my $rr=3;
//: &eperl::retime("-stage ${rr} -o sum_out_dd -i sum_out_d0 -cg_en_i pp_pvld_d0 -cg_en_o pp_pvld_dd -cg_en_rtm -wid $rwidth");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [19-1:0] sum_out_d0_d1;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0)) begin
        sum_out_d0_d1[19-1:0] <= sum_out_d0[19-1:0];
    end
end

reg pp_pvld_d0_d1;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d1 <= pp_pvld_d0;
end

reg [19-1:0] sum_out_d0_d2;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0_d1)) begin
        sum_out_d0_d2[19-1:0] <= sum_out_d0_d1[19-1:0];
    end
end

reg pp_pvld_d0_d2;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d2 <= pp_pvld_d0_d1;
end

reg [19-1:0] sum_out_d0_d3;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0_d2)) begin
        sum_out_d0_d3[19-1:0] <= sum_out_d0_d2[19-1:0];
    end
end

reg pp_pvld_d0_d3;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d3 <= pp_pvld_d0_d2;
end

wire [19-1:0] sum_out_dd;
assign sum_out_dd = sum_out_d0_d3;

wire pp_pvld_dd;
assign pp_pvld_dd = pp_pvld_d0_d3;


//| eperl: generated_end (DO NOT EDIT ABOVE)
assign mac_out_pvld=pp_pvld_dd;
assign mac_out_data=sum_out_dd;
endmodule // NV_NVDLA_CMAC_CORE_mac
