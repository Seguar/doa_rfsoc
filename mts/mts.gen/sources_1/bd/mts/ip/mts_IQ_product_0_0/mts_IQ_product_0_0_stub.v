// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sun Jun 25 16:19:42 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Work/FPGA/RFSoC-MTS/boards/RFSoC4x2/build_mts/mts/mts.gen/sources_1/bd/mts/ip/mts_IQ_product_0_0/mts_IQ_product_0_0_stub.v
// Design      : mts_IQ_product_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "iq_product,Vivado 2022.2.2" *)
module mts_IQ_product_0_0(i1, i2, i3, i4, q1, q2, q3, q4, clk, gateway_out, 
  gateway_out1, gateway_out10, gateway_out11, gateway_out12, gateway_out13, gateway_out14, 
  gateway_out15, gateway_out16, gateway_out17, gateway_out18, gateway_out19, gateway_out2, 
  gateway_out3, gateway_out4, gateway_out5, gateway_out6, gateway_out7, gateway_out8, 
  gateway_out9)
/* synthesis syn_black_box black_box_pad_pin="i1[15:0],i2[15:0],i3[15:0],i4[15:0],q1[15:0],q2[15:0],q3[15:0],q4[15:0],clk,gateway_out[32:0],gateway_out1[32:0],gateway_out10[32:0],gateway_out11[32:0],gateway_out12[32:0],gateway_out13[32:0],gateway_out14[32:0],gateway_out15[32:0],gateway_out16[32:0],gateway_out17[32:0],gateway_out18[32:0],gateway_out19[32:0],gateway_out2[32:0],gateway_out3[32:0],gateway_out4[32:0],gateway_out5[32:0],gateway_out6[32:0],gateway_out7[32:0],gateway_out8[32:0],gateway_out9[32:0]" */;
  input [15:0]i1;
  input [15:0]i2;
  input [15:0]i3;
  input [15:0]i4;
  input [15:0]q1;
  input [15:0]q2;
  input [15:0]q3;
  input [15:0]q4;
  input clk;
  output [32:0]gateway_out;
  output [32:0]gateway_out1;
  output [32:0]gateway_out10;
  output [32:0]gateway_out11;
  output [32:0]gateway_out12;
  output [32:0]gateway_out13;
  output [32:0]gateway_out14;
  output [32:0]gateway_out15;
  output [32:0]gateway_out16;
  output [32:0]gateway_out17;
  output [32:0]gateway_out18;
  output [32:0]gateway_out19;
  output [32:0]gateway_out2;
  output [32:0]gateway_out3;
  output [32:0]gateway_out4;
  output [32:0]gateway_out5;
  output [32:0]gateway_out6;
  output [32:0]gateway_out7;
  output [32:0]gateway_out8;
  output [32:0]gateway_out9;
endmodule
