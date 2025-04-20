// Code your design here
`timescale 1ns/100ps
module dff_bh(q,d,clk);
  input d,clk;
  output reg q;
  
  always @(posedge clk)
    q<=d;
endmodule
