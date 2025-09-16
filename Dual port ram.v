`timescale 1ns/100ps
module true_dual_port_ramv1(
  output reg [7:0] q_a,q_b, // Data outputs for port A and port B
  input [7:0] data_a,data_b, // Data inputs for port A and port B
  input [5:0] addr_a,addr_b, // Address inputs for port A and port B
  input we_a,we_b,clk // Write enables and shared clock
);
  reg [7:0] ram [63:0]; // Declare memory array of 64 x 8 bits
  
// Port A process
  always @(posedge clk)
    if(we_a) begin
      ram[addr_a]<=data_a; // Write to memory
      q_a<=data_a; // Write-first: output new data immediately
    end
  else
    q_a<=ram[addr_a]; // Read existing data from memory
  
  //port B process
  always @(posedge clk)
    if(we_b) begin
      ram[addr_b]<=data_b;
      q_b<=data_b;
    end
  else
    q_b<=ram[addr_b];
endmodule
    
