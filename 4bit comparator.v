// Code your design here
`timescale 1ns/100ps
module comparator_4bit_bh(eq,gt,sm,a,b);
  input [3:0]a,b;
  output reg eq,gt,sm;
  
  always @(*)begin
    eq = (a==b);
    gt = (a>b);
    sm = (a<b);
  end
endmodule
