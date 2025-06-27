
`timescale 1ns/100ps
module up_counter_load_bh(count,clk,load,rst,data_in);
  input [3:0] data_in;
  input clk,rst,load;
  output [3:0] count;
  reg [3:0] count_temp;
  
  always @(posedge clk)
    if(rst)
      count_temp<=4'd0;
  else if(load)
    count_temp <= data_in;
  else
    count_temp<=count_temp+1;
  
  assign count = count_temp;
endmodule
