`timescale 1ps / 1ps
module win_avg_tb;

  // Parameters
  localparam  numbers = 10;
  localparam  streams = 16;
  localparam  bits = 2;

  //Ports
  logic  aclk;
  logic [bits-1:0] m0r = -1;
  logic [bits-1:0] m1r = 1;
  logic [bits-1:0] m2r = 1;
  logic [bits-1:0] m3r = 1;
  logic [bits-1:0] m4r = 1;
  logic [bits-1:0] m5r = 1;
  logic [bits-1:0] m6r = 1;
  logic [bits-1:0] m7r = 1;
  logic [bits-1:0] m8r = 1;
  logic [bits-1:0] m9r = 1;
  logic [bits-1:0] m0i = 1;
  logic [bits-1:0] m1i = 1;
  logic [bits-1:0] m2i = 1;
  logic [bits-1:0] m3i = 1;
  logic [bits-1:0] m4i = 1;
  logic [bits-1:0] m5i = 1;
  logic [bits-1:0] m6i = 1;
  logic [bits-1:0] m7i = 1;
  logic [bits-1:0] m8i = 1;
  logic [bits-1:0] m9i = 1;
  logic [4 : 0] win_len;
  logic [bits * streams - 1 : 0] axis_di;
  logic  axis_vi;
  logic  axis_ri;
  logic [bits * streams * 2 - 1 : 0] axis_do;
  logic  axis_vo;
  logic  axis_ro;

  win_avg # (
    .numbers(numbers),
    .streams(streams),
    .bits(bits)
  )
  win_avg_inst (
    .aclk(aclk),
    .win_len(win_len),
    .axis_di(axis_di),
    .axis_vi(axis_vi),
    .axis_ri(axis_ri),
    .axis_do(axis_do),
    .axis_vo(axis_vo),
    .axis_ro(axis_ro)
  );

always #5  aclk = ! aclk ;

initial begin
    aclk = 0;
    win_len = 1;
    axis_di = {m9r, m8i, m8r, m7r, m6i, m6r, m5i, m5r, m4r, m3i, m3r, m2i, m2r, m1i, m1r, m0r};
    // axis_vi = 1;
    // axis_ro = 0;

    // Wait for aclk to settle
    #10;
    
    // Start the test
    axis_vi = 1;
    // #10 axis_vi = 0;
    
    // Wait for the output to be valid
    while (!axis_vo) begin
      #1;
    end
    
    // // Print the output
    // $display("axis_do = %h", axis_do);
    
    // // End the simulation
    // $finish;
  end
endmodule
