
`timescale 1ns/100ps
module range_up_counter_bh(count,clk,rst,load,data_in);
  input [7:0] data_in;
  input clk,rst,load;
  output [7:0] count;
  reg [7:0] count_temp;
  
  always @(posedge clk,posedge rst)
    if(rst | count_temp>=8'd40 | count_temp<8'd10)
      count_temp<=8'd10;
  else
    count_temp<= count_temp+1;
  
  assign count=count_temp;
endmodule
