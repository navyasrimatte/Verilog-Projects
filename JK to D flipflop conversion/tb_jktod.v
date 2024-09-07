`timescale 1ns / 1ps


module tb_jktod();
wire q,qbar;
reg rst,clk,D;
JK_Dflipflop u2(q,qbar,D,rst,clk);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10
rst=0;
D=0; #20;
D=1; #30;
D=0; #20;
D=1; #30;
D=0; #20;
D=1; #30;
D=0; #20;
D=1; #30;
end
endmodule
