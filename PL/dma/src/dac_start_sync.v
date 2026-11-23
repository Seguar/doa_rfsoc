// -------------------------------------------------------------------------------------------------
// dac_start_sync: start both DAC waveform players on the same RF fabric clock cycle.
//
// In the deployed doa_mts design the capture trigger (pl_clk0 domain) was ORed with each
// player's GPIO enable and fed straight into the two ram_play instances, which run on the
// asynchronous RF fabric clock. Each player sampled the edge on its own, so in about 4 % of
// captures one DAC started one fabric cycle (8 ns, 4 DAC samples) after the other. The two
// equal DAC copies then added with a centre notch in the band (OTA EVM 7.6 % -> 10 %).
//
// Here the trigger is synchronised once into the RF fabric clock and both enables are
// registered from that one synchronised bit, so both players always see the same cycle.
// The GPIO enables are quasi-static software controls and get their own synchronisers.
// Added latency: three fabric cycles from trigger to player enable.
// SPDX-License-Identifier: MIT
// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- --
`timescale 1ns / 1ps

module dac_start_sync (
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
  input  wire clk,          // RF fabric clock of both ram_play instances
  input  wire trig_async,   // capture trigger, pl_clk0 domain
  input  wire en0_async,    // axi_gpio_dac0 output, pl_clk0 domain
  input  wire en1_async,    // axi_gpio_dac1 output, pl_clk0 domain
  output reg  enable0,      // dac_0/ram_play_0 enable
  output reg  enable1 );    // dac_1/ram_play_0 enable

  (* ASYNC_REG = "TRUE" *) reg [1:0] trig_s = 2'b00;
  (* ASYNC_REG = "TRUE" *) reg [1:0] en0_s  = 2'b00;
  (* ASYNC_REG = "TRUE" *) reg [1:0] en1_s  = 2'b00;

  initial begin
    enable0 = 1'b0;
    enable1 = 1'b0;
  end

  always @(posedge clk) begin
    trig_s  <= {trig_s[0], trig_async};
    en0_s   <= {en0_s[0], en0_async};
    en1_s   <= {en1_s[0], en1_async};
    // both outputs from the same synchronised trigger bit -> same start cycle
    enable0 <= trig_s[1] | en0_s[1];
    enable1 <= trig_s[1] | en1_s[1];
  end
endmodule
