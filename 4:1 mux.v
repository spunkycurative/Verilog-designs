// Code your design here
`timescale 1ns/100ps
module mux_4_1_bh(Y,I,S);
  input [3:0]I;
  input [1:0]S;
  output reg Y;
  
  always @(*) begin
    
    case(S)
      2'b00: Y=I[0];
      2'b01: Y=I[1];
      2'b10: Y=I[2];
      2'b11: Y=I[3];
      default:$display("error");
    endcase
  end
endmodule
