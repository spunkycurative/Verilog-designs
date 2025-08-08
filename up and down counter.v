
`timescale 1ns/100ps
module counter_up_down_bh(count,m,load,clk,rst,data_in);
  input [7:0]data_in;
  input clk,rst,load,m;
  output [7:0] count;
  reg [7:0] count_temp;
  
  always @(posedge clk,posedge rst)
    if(rst)
      count_temp<=8'b00000000;
  else if(load)
    count_temp<=data_in;
  else if(m)
    count_temp<=count_temp+1;
  else
    count_temp<=count_temp-1;
  assign count = count_temp;
  
endmodule
