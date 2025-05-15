// Code your design here
`timescale 1ns/100ps
module shift_left_5bit_bh(q,din,clk,rst);
  input din,clk,rst;
  output reg [4:0]q;
  
  always @(posedge clk)
    if(rst)
      q<=5'b00000;
  else begin
    q[4]<=q[3];
    q[3]<=q[2];
    q[2]<=q[1];
    q[1]<=q[0];
    q[0]<=din;
  end
  
endmodule
  
  
  
