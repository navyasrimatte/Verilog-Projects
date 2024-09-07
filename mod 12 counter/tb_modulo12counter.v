`timescale 1ns / 1ps



module tb_modulo12counter();
reg clk,rst;
wire [3:0] q;
modulo_12counter mc1(clk,rst,q);
always #10 clk=~clk;
initial clk=0;
initial begin
rst=1; #10;
rst=0; #20; 
end
endmodule

