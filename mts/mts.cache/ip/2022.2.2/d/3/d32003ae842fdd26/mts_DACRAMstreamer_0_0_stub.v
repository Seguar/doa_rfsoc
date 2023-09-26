// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Wed Jun 28 11:47:09 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_DACRAMstreamer_0_0_stub.v
// Design      : mts_DACRAMstreamer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DACRAMstreamer,Vivado 2022.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(portA_cpu_wdata, portA_we, portA_en, 
  portA_cpu_rdata, portAcpu_addr, portA_clk, portA_rst, axis_clk, axis_aresetn, axis_tdata, 
  axis_tready, axis_tvalid, numSampleVectors, enable)
/* synthesis syn_black_box black_box_pad_pin="portA_cpu_wdata[15:0],portA_we[1:0],portA_en,portA_cpu_rdata[15:0],portAcpu_addr[31:0],portA_clk,portA_rst,axis_clk,axis_aresetn,axis_tdata[15:0],axis_tready,axis_tvalid,numSampleVectors[16:0],enable" */;
  output [15:0]portA_cpu_wdata;
  output [1:0]portA_we;
  output portA_en;
  input [15:0]portA_cpu_rdata;
  output [31:0]portAcpu_addr;
  output portA_clk;
  output portA_rst;
  input axis_clk;
  input axis_aresetn;
  output [15:0]axis_tdata;
  input axis_tready;
  output axis_tvalid;
  input [16:0]numSampleVectors;
  input enable;
endmodule
