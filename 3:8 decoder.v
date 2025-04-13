// Code your design here
`timescale 1ns/100ps
module decoder_3_8_df2(Y,I,EN);
  input[2:0]I;
  input EN;
  output [7:0]Y;
  
  assign Y[0] = EN & ~I[2] & ~I[1] & ~I[0];
  assign Y[1] = EN & ~I[2] & ~I[1] & I[0];
  assign Y[2] = EN & ~I[2] & I[1] & ~I[0];
  assign Y[3] = EN & ~I[2] & I[1] & I[0];
  assign Y[4] = EN & I[2] & ~I[1] & ~I[0];
  assign Y[5] = EN & I[2] & ~I[1] & I[0];
  assign Y[6] = EN & I[2] & I[1] & ~I[0];
  assign Y[7] = EN & I[2] & I[1] & I[0];
  
endmodule
