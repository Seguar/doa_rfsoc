`timescale 1ns / 1ps
module iq_prod_tb;

  // Inputs
  logic aclk;
  logic [15:0] axis_di0;
  logic axis_vi0;
  logic [15:0] axis_dq0;
  logic axis_vq0;
  logic [15:0] axis_di1;
  logic axis_vi1;
  logic [15:0] axis_dq1;
  logic axis_vq1;
  logic [15:0] axis_di2;
  logic axis_vi2;
  logic [15:0] axis_dq2;
  logic axis_vq2;
  logic [15:0] axis_di3;
  logic axis_vi3;
  logic [15:0] axis_dq3;
  logic axis_vq3;
  
  // Outputs
  wire [511:0] axis_do0;
  wire axis_vo0;
  wire axis_ri0;
  wire axis_rq0;
  wire axis_ri1;
  wire axis_rq1;
  wire axis_ri2;
  wire axis_rq2;
  wire axis_ri3;
  wire axis_rq3;
  
  // Clock generator
  always #5 aclk = ~aclk;
  
  // Instantiate the iq_prod module
  iq_prod dut (
    .aclk(aclk),
    .axis_di0(axis_di0),
    .axis_vi0(axis_vi0),
    .axis_dq0(axis_dq0),
    .axis_vq0(axis_vq0),
    .axis_di1(axis_di1),
    .axis_vi1(axis_vi1),
    .axis_dq1(axis_dq1),
    .axis_vq1(axis_vq1),
    .axis_di2(axis_di2),
    .axis_vi2(axis_vi2),
    .axis_dq2(axis_dq2),
    .axis_vq2(axis_vq2),
    .axis_di3(axis_di3),
    .axis_vi3(axis_vi3),
    .axis_dq3(axis_dq3),
    .axis_vq3(axis_vq3),
    .axis_do0(axis_do0),
    .axis_vo0(axis_vo0),
    .axis_ri0(axis_ri0),
    .axis_rq0(axis_rq0),
    .axis_ri1(axis_ri1),
    .axis_rq1(axis_rq1),
    .axis_ri2(axis_ri2),
    .axis_rq2(axis_rq2),
    .axis_ri3(axis_ri3),
    .axis_rq3(axis_rq3)
  );
  
  // Stimulus
  initial begin
    // Initialize inputs
    aclk = 0;
    axis_di0 = 16'h0000;
    axis_vi0 = 0;
    axis_dq0 = 16'h0000;
    axis_vq0 = 0;
    axis_di1 = 16'h0000;
    axis_vi1 = 0;
    axis_dq1 = 16'h0000;
    axis_vq1 = 0;
    axis_di2 = 16'h0000;
    axis_vi2 = 0;
    axis_dq2 = 16'h0000;
    axis_vq2 = 0;
    axis_di3 = 16'h0000;
    axis_vi3 = 0;
    axis_dq3 = 16'h0000;
    axis_vq3 = 0;
    
    // Apply stimulus
    #10;
    axis_vi0 = 1;
    axis_vq0 = 1;
    axis_di0 = 16'h1234;
    axis_dq0 = 16'h5678;
    // #10;
    axis_vi1 = 1;
    axis_vq1 = 1;
    axis_di1 = 16'hABCD;
    axis_dq1 = 16'hEF01;
    // #10;
    axis_vi2 = 1;
    axis_vq2 = 1;
    axis_di2 = 16'h4321;
    axis_dq2 = 16'h8765;
    // #10;
    axis_vi3 = 1;
    axis_vq3 = 1;
    axis_di3 = 16'hDCBA;
    axis_dq3 = 16'h9876;
    #10;
    
    // Wait for valid output
    repeat(10) @(posedge aclk);
    
    // Check the output
    if (axis_vo0) begin
      $display("Output valid");
      $display("axis_do0 = %h", axis_do0);
    end else begin
      $display("Output not valid");
    end
    
    // Finish simulation
    $finish;
  end
  
endmodule

