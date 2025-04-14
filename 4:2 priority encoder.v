// Code your design here
`timescale 1ns/100ps
module encoder_4_2_priority_bh(y,v,i);
  input [3:0]i;
  output reg [1:0]y;
  output reg v;
  
  always @(*)
    begin
      if(i[0]) {v,y} = 3'b100;
      else if(i[1]) {v,y} = 3'b101;
      else if(i[2]) {v,y} = 3'b110;
      else if(i[3]) {v,y} = 3'b111;
      else {v,y} = 3'b000;
      
    end
endmodule
