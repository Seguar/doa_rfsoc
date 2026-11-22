// -------------------------------------------------------------------------------------------------
// ram_play: DAC waveform RAM player of the deployed doa_mts boot overlay.
//
// The boot HWH (PS/python/boot/doa_mts.hwh, Vivado 2022.2) instantiates a module
// reference "ram_play" whose source was not committed. Its ports, parameters and
// connections in the HWH match DACRAMstreamer.v (AMD MIT, see PL/src) without the
// numSampleVectors input: DWIDTH 128, MEM_SIZE_BYTES 2097152, BRAM port A read on
// the RF fabric clock, AXIS master straight into the RF-DAC s00/s20 stream.
// This file reconstructs it from that evidence. Behaviour: while enable is high the
// RAM is read sequentially and wraps after MEM_SIZE_BYTES (the original wrapped by
// truncation of the byte address inside the BRAM); while low tvalid is 0 and the
// address returns to 0, so the next enable edge starts the waveform from row 0.
// SPDX-License-Identifier: MIT
// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- --
`timescale 1ns / 1ps

module ram_play #( parameter DWIDTH = 128, parameter MEM_SIZE_BYTES = 2097152 ) (
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 2097152, MEM_WIDTH 128" *)

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *)
  output wire [DWIDTH-1:0] portA_cpu_wdata,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *)
  output wire [DWIDTH/8-1:0] portA_we,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *)
  output reg portA_en,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *)
  input wire [DWIDTH-1:0] portA_cpu_rdata,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *)
  output reg [31:0] portAcpu_addr,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *)
  output wire portA_clk,

  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *)
  output wire portA_rst,

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
  (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis, ASSOCIATED_RESET axis_aresetn" *)
  input wire axis_clk,
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
  input  wire              axis_aresetn,
  output reg  [DWIDTH-1:0] axis_tdata,
  input  wire              axis_tready,
  output reg               axis_tvalid,

  input                    enable );

  localparam [31:0] LAST_ADDR = MEM_SIZE_BYTES - DWIDTH/8;

  assign portA_cpu_wdata = 0;
  assign portA_clk       = axis_clk;
  assign portA_rst       = ~axis_aresetn;
  assign portA_we        = 0;

  initial begin
    portA_en      = 1'b0;
    portAcpu_addr = 32'd0;
    axis_tvalid   = 1'b0;
  end

  always @(posedge axis_clk) begin
    axis_tdata <= portA_cpu_rdata;
    if (~axis_aresetn) begin
      axis_tvalid   <= 1'b0;
      portA_en      <= 1'b0;
      portAcpu_addr <= 32'd0;
    end else if (enable) begin
      axis_tvalid <= 1'b1;
      portA_en    <= 1'b1;
      if (portAcpu_addr == LAST_ADDR)
        portAcpu_addr <= 32'd0;
      else
        portAcpu_addr <= portAcpu_addr + DWIDTH/8;
    end else begin
      axis_tvalid   <= 1'b0;
      portA_en      <= 1'b0;
      portAcpu_addr <= 32'd0;
    end
  end
endmodule
