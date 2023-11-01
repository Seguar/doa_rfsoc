
module win_avg_tb;

  // Parameters
  localparam  numbers = 10;
  localparam  streams = 16;
  localparam  bits = 32;

  //Ports
  reg  aclk;
  reg [4 : 0] win_len;
  reg [bits * streams - 1 : 0] axis_di;
  reg  axis_vi;
  logic  axis_ri;
  logic [bits * streams * 2 - 1 : 0] axis_do;
  logic  axis_vo;
  reg  axis_ro;

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
    // aclk = 0;
    // win_len = 5;
    // axis_di = 32'h00000001;
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
    
    // Print the output
    $display("axis_do = %h", axis_do);
    
    // End the simulation
    $finish;
  end
endmodule
