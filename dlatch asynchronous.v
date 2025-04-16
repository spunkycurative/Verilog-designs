// Code your design here
`timescale 1ns/100ps
module dlatchasync_bh(q,d,en,rst);
  input en,d,rst;                                                                                                                 
  output reg q;
  
  always @(*)
    if(rst)
      q=1'b0;
  else if(en)
    q=d;
endmodule
    
  
