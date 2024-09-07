`timescale 1ns / 1ps



module tb_mod_Ncounter();
parameter N=10;
parameter WIDTH=4;
reg clk,rst;
wire [WIDTH-1:0] out;

mod_Ncounter uut( clk,rst, out);
always #10 clk=~clk;
initial begin
{clk,rst}<=0;
repeat(2) @(posedge clk);
rst<=1;
repeat(2) @(posedge clk);
$finish;
end
endmodule
