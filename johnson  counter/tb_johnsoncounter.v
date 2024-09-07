`timescale 1ns / 1ps
module tb_johnsoncounter();
wire [3:0]q;
reg clk,rst;
johnsoncounter jc1(q,clk,rst);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10;
rst=0;
end
endmodule
