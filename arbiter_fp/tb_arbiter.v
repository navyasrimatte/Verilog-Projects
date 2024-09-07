`timescale 1ns / 1ps



module tb_arbiter();
reg clk ,rst;
reg [3:0]req;
wire [3:0]grant; 
arbiter_fp af ( clk,rst,req,grant);
initial
{clk,rst,req}=0;
initial
begin
clk=1'b0;
forever
#5 clk=~clk;
end
initial
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endmodule
