`timescale 1ns / 1ps
//`ifdef ADD_DLY
`define DLY 1 
//`endif
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2020 11:51:51 AM
// Design Name: 
// Module Name: serial_cap_sync
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module serial_cap_sync(
    
    input wire capture_in,
    input wire ext_capture_in,
    input wire play_in,
    input wire ext_play_in,
    output wire play_out,
    input wire master,
    output wire capture_out,
    input wire pl_adc_clk,
    input wire pl_sysref,
    output wire CAP_tbuf_i,
    output wire PLAY_tbuf_i,
    output wire CAP_tbuf_t,
    output wire PLAY_tbuf_t,
    input wire PLAY_tbuf_o,
    input wire CAP_tbuf_o
);
    reg m_cap;
    reg m_cap_a;
    reg cap_out;
    reg m_play;
    reg m_play_a;
    
    reg ext_play;
    reg ext_cap; 
    reg ext_cap_a;
    reg p_out;
     
    assign PLAY_tbuf_t = m_play;
//    assign CAP_tbuf_t = !master;
    assign CAP_tbuf_t = m_cap;
    assign capture_out = cap_out | ext_cap;
    assign play_out = p_out | ext_play ;
     //   assign capture_out = m_cap;
    
 //   always @(posedge pl_adc_clk) begin
 //       if (pl_sysref) begin
 //           m_cap <= capture_in;
 //       end else begin
 //           m_cap <= 1'b0;
 //       end

//        capture_out <= cap_out;

 //   end

    always @(posedge pl_sysref) begin
        cap_out <= CAP_tbuf_o;
    end

    always @(posedge pl_sysref) begin
        p_out <= PLAY_tbuf_o;
    end

   always @(posedge pl_sysref) begin
    //    if (capture_in) begin
         
            m_cap_a <= capture_in;
            m_cap <= m_cap_a;
     //       capture_out <= m_cap;
     //   end else begin
     //       m_cap <= 1'b0;
       // end

  //      capture_out <= m_cap;

   end

  always @(posedge pl_sysref) begin
    //    if (capture_in) begin
         
            m_play_a <= play_in;
            m_play <= m_play_a;
     //       capture_out <= m_cap;
     //   end else begin
     //       m_cap <= 1'b0;
       // end

  //      capture_out <= m_cap;

   end
      

reg [5:0] counter = 6'b000000;

always @(posedge pl_sysref) 
    begin
        if (counter > 6'b001110)
        begin
               ext_play <= 0;
               ext_cap <= 0;
         end  
        else
        begin
               ext_cap <= ext_capture_in;
               ext_play <= ext_play_in;
        end 
               
        if (ext_capture_in == 1)
          begin
               if (counter == 6'b111110)
                   counter = 6'b001111;
               else
                   counter = counter + 1;
            end 
        
         if (ext_capture_in == 0)
            counter = 6'b000000;
          
     end                
             

endmodule


