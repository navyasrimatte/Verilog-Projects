`timescale 1ns / 1ps


module tb_jkff();
wire q,qbar;
reg J,K,rst,clk;
jkflipflop j1(q,qbar,J,K,rst,clk);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10
rst=0;
{J,K}=2'b00; #100;
{J,K}=2'b01; #100;
{J,K}=2'b10; #100;
end
endmodule

 
