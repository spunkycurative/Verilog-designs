
`timescale 1ns/100ps
module single_port_ram_v4(
  output [7:0]q,
  input [7:0] data,
  input [5:0] write_addr,read_addr,
  input we,clk
);
  reg [7:0] ram [63:0];
  reg [5:0] read_addr_reg;
  
  always @(posedge clk) begin
    if(we)
      ram[write_addr]<=data;
    read_addr_reg<=read_addr;
  end
  assign q=ram[read_addr_reg];
endmodule
