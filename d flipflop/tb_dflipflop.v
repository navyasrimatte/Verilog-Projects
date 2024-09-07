`timescale 1ns / 1ps

module tb_dflipflop();
wire q,qbar;
reg D,rst,clk;
dflipflop d1( q,qbar,D,rst,clk);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10
rst=0;
D=0; #100;
D=1; #100;
end
endmodule
