`timescale 1ns / 1ps

module tb_clk_div();
reg clk,rst,en;
wire div4,div8,div16,div32;
clk_div_2n uut(clk,rst,en, div4,div8,div16,div32);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10;
rst=0;
en=1;
end
endmodule
