`timescale 1ns / 1ps

module tb_jktosr();
wire q,qbar;
reg clk,rst,S,R;
JK_SRflipflop jkff1(q,qbar,S,R,rst,clk);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10
rst=0;
S=0; R=0; #10;
S=0; R=1; #10;
S=1; R=0; #10;
S=0; R=0; #10;
S=0; R=1; #10;
S=1; R=0; #10;
end
endmodule
