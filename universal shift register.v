`timescale 1ns/100ps
module univ_shift_5bit_bh(po,pi,sel,clk,rst,si);
  input [1:0] sel;
  input [4:0] pi;
  input clk,rst,si;
  output reg [4:0] po;
  
  always @(posedge clk)
    if(rst)
      po<=5'b00000;
  else begin
    case(sel)
      2'b00: po<=po;
      2'b01: po<={po[3:0],si};
      2'b10: po<={si,po[4:1]};
      2'b11: po<=pi;
      default: po<=0;
    endcase
  end
endmodule
      
      
      
      
      
      
      
      
      
      
      
      
      
