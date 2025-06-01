`timescale 1ns/100ps
module up_counter_4bit_bh(count_temp,clk,rst);
  input clk,rst;
  output reg [3:0] count_temp;//count_temp is used when extra logic is used i.e do something before assigning it to count.
  //You want to isolate outputs from internal signals.
  
  always @(posedge clk or posedge rst)
    if(rst)
      count_temp<=4'd0;
  else
    count_temp<=count_temp+1;
  
  assign count = count_temp;
  
endmodule
