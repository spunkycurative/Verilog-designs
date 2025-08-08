
`timescale 1ns/100ps
module counter_mod47_up_bh(count,clk,rst,load,data_in);
  input [7:0] data_in;
  input clk,rst,load;
  output [7:0] count;
  reg [7:0] count_temp;
  
  always @(posedge clk or posedge rst)
    if(rst | count_temp>=8'd46)
      count_temp<=8'd0;
  else
    count_temp<=count_temp+1;
  
  assign count = count_temp;
endmodule
