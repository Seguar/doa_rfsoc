// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Mon Jun 19 19:33:30 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_ADCRAMcapture_0_2_stub.v
// Design      : mts_ADCRAMcapture_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ADCRAMcapture,Vivado 2022.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bram_wdata, bram_we, bram_en, bram_rdata, 
  bram_addr, bram_clk, bram_rst, axis_clk, axis_aresetn, CAP_AXIS_tdata, CAP_AXIS_tready, 
  CAP_AXIS_tvalid, trig_cap)
/* synthesis syn_black_box black_box_pad_pin="bram_wdata[255:0],bram_we[31:0],bram_en,bram_rdata[255:0],bram_addr[31:0],bram_clk,bram_rst,axis_clk,axis_aresetn,CAP_AXIS_tdata[255:0],CAP_AXIS_tready,CAP_AXIS_tvalid,trig_cap" */;
  output [255:0]bram_wdata;
  output [31:0]bram_we;
  output bram_en;
  input [255:0]bram_rdata;
  output [31:0]bram_addr;
  output bram_clk;
  output bram_rst;
  input axis_clk;
  input axis_aresetn;
  input [255:0]CAP_AXIS_tdata;
  output CAP_AXIS_tready;
  input CAP_AXIS_tvalid;
  input trig_cap;
endmodule
