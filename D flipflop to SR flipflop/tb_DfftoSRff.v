`timescale 1ns / 1ps

module tb_DfftoSRff();
wire q,qbar;
reg clk,rst,S,R;
Dff_SRff s3(q,qbar,clk,rst,S,R);
always #10 clk=~clk;
initial clk=0;
initial begin
rst=1; #10;
rst=0;
{S,R}=2'b00; #50;
{S,R}=2'b01; #50;
{S,R}=2'b10; #50;
{S,R}=2'b00; #50;
{S,R}=2'b01; #50;
{S,R}=2'b10; #50;
end
endmodule
