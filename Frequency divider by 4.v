`timescale 1ns/100ps
module freq_div_4_bh(clk_out,clk_div2,clk,rst);
  input clk,rst;
  output reg clk_out,clk_div2;
  
  always @(posedge clk)
    if(rst)
      clk_div2 <= 1'b0;
  else
    clk_div2 <= ~clk_div2;
  
  always @(posedge clk)
    if(rst)
      clk_out<=1'b0;
  else if(clk_div2)
    clk_out<=~clk_out;
endmodule
  
