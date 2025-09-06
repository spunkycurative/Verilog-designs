`timescale 1ns/100ps
module dual_clock_fifo_bh(rst,clk_w,clk_r,buf_in,buf_out,wr_en,rd_en,buf_empty,buf_full,fifo_counter);
  input rst,clk_w,clk_r,wr_en,rd_en;
  input [7:0] buf_in;
  output [7:0] buf_out;
   output buf_empty,buf_full;
  output [6:0] fifo_counter;
  
  reg [7:0] buf_out;
  reg buf_empty,buf_full;
  reg [6:0] fifo_counter;
  reg [7:0] buf_mem[63:0];
  reg [5:0] rd_ptr, wr_ptr; 
  
  always @(fifo_counter) begin
    buf_empty<=(fifo_counter==0);
    buf_full<=(fifo_counter==64);
    
  end
  
  always @(posedge clk_w , posedge rst)begin
    if(rst)
      fifo_counter<=0;
    else if(!buf_full && wr_en)
    fifo_counter<=fifo_counter+1;
  else
    fifo_counter<=fifo_counter;
  end

  
  always @(posedge clk_r)begin
    if(!buf_empty && rd_en)
      fifo_counter<=fifo_counter-1;
  else
    fifo_counter<=fifo_counter;
  end
  
  always @(posedge clk_r or posedge rst)begin
    if(rst)
      buf_out<=0;
  else if(rd_en && !buf_empty)
    buf_out<=buf_mem[rd_ptr];
  else
    buf_out<=buf_out;
  end
  
  always @(posedge clk_w)begin
    if(wr_en && !buf_full)
      buf_mem[wr_ptr]<=buf_in;
    else
      buf_mem[wr_ptr]<=buf_mem[wr_ptr];
  end
  
  //managing the pointers'
  always @(posedge clk_w or posedge rst)begin
    if(rst)
      wr_ptr<=0;
    else if(!buf_full && wr_en)
    wr_ptr<=wr_ptr+1;
  else
    wr_ptr<=wr_ptr;
  end

  
  always @(posedge clk_r or posedge rst)begin
    if(rst)
      rd_ptr<=0;
    
    else if(!buf_empty && rd_en)
      rd_ptr<=rd_ptr+1;
    else
      rd_ptr<=rd_ptr;
 
  end
endmodule
