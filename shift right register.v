// Code your design here
`timescale 1ns/100ps
module shift_register_5bit_bh(q,din,clk,rst);
  input din,clk,rst;
  output reg [4:0]q;
  
  always @ (posedge clk,posedge rst)
    if(rst)
      q<=5'b00000;
  else
    q<={din,q[4:1]};//shift right: new bit in q[4],q[4] in q[3] and so on
  
endmodule
  
  
  
