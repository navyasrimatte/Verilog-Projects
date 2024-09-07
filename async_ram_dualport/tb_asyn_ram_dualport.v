`timescale 1ns / 1ps
module tb_asyn_ram_dualport();
reg [7:0]din;
reg [3:0]wr_addr;
reg we,rst,clk,re;
reg [3:0]re_addr;
wire [7:0]d_out;
asyn_ram_dualport uut(din,wr_addr,we,rst,clk,re,re_addr,d_out);
initial begin
clk=1'b0;
forever
#50 rst=~rst;
end
task initialize();
 {din,wr_addr,we,rst,re,re_addr}=0;
 endtask
 task write(input [7:0]i,input [3:0]j,input k);
 begin
 din=i;
 @(negedge clk)
 wr_addr=j;
 we=k;
 end
 endtask
 task read(input [3:0]v,N);
 begin
  @(negedge clk)
 re_addr=v;
 re=N;
 end
  endtask
 initial begin
 initialize;
 write({$random},4'b1010,1);
 #5;
 read(4'b1010,1);
 #5;
  end
endmodule
