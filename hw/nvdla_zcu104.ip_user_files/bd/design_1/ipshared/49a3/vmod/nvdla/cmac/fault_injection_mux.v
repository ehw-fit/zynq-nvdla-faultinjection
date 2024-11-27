// ================================================================
// NVDLA Fault Injection Mux
//
// Licensed under the MIT License.
// Copyright (c) 2024 Filip Masar
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// ================================================================
// File Name: fault_injection_mux.v


module fault_injection_mux(
    input [18-1:0] cdata_in,
    input [18-1:0] fdata_in,
    input [18-1:0] fsel_in,
    input sel,
    output [18-1:0] out
    );
    assign out[0]  = sel ? (fsel_in[0]  ? fdata_in[0]  : cdata_in[0])  : cdata_in[0];
    assign out[1]  = sel ? (fsel_in[1]  ? fdata_in[1]  : cdata_in[1])  : cdata_in[1];
    assign out[2]  = sel ? (fsel_in[2]  ? fdata_in[2]  : cdata_in[2])  : cdata_in[2];
    assign out[3]  = sel ? (fsel_in[3]  ? fdata_in[3]  : cdata_in[3])  : cdata_in[3];
    assign out[4]  = sel ? (fsel_in[4]  ? fdata_in[4]  : cdata_in[4])  : cdata_in[4];
    assign out[5]  = sel ? (fsel_in[5]  ? fdata_in[5]  : cdata_in[5])  : cdata_in[5];
    assign out[6]  = sel ? (fsel_in[6]  ? fdata_in[6]  : cdata_in[6])  : cdata_in[6];
    assign out[7]  = sel ? (fsel_in[7]  ? fdata_in[7]  : cdata_in[7])  : cdata_in[7];
    assign out[8]  = sel ? (fsel_in[8]  ? fdata_in[8]  : cdata_in[8])  : cdata_in[8];
    assign out[9]  = sel ? (fsel_in[9]  ? fdata_in[9]  : cdata_in[9])  : cdata_in[9];
    assign out[10] = sel ? (fsel_in[10] ? fdata_in[10] : cdata_in[10]) : cdata_in[10];
    assign out[11] = sel ? (fsel_in[11] ? fdata_in[11] : cdata_in[11]) : cdata_in[11];
    assign out[12] = sel ? (fsel_in[12] ? fdata_in[12] : cdata_in[12]) : cdata_in[12];
    assign out[13] = sel ? (fsel_in[13] ? fdata_in[13] : cdata_in[13]) : cdata_in[13];
    assign out[14] = sel ? (fsel_in[14] ? fdata_in[14] : cdata_in[14]) : cdata_in[14];
    assign out[15] = sel ? (fsel_in[15] ? fdata_in[15] : cdata_in[15]) : cdata_in[15];
    assign out[16] = sel ? (fsel_in[16] ? fdata_in[16] : cdata_in[16]) : cdata_in[16];
    assign out[17] = sel ? (fsel_in[17] ? fdata_in[17] : cdata_in[17]) : cdata_in[17];
endmodule