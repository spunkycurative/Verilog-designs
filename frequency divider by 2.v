// Code your design here
`timescale 1ns/100ps
module freq_divider_bh(clk_out,clk,rst);
  input clk,rst;
  output reg clk_out;
  
  always @(posedge clk)
    if(rst)
      clk_out<=1'b0;
  else
    clk_out<=~clk_out;
endmodule
