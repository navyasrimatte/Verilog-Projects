`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module JK_SRflipflop(q,qbar,S,R,rst,clk);
output q,qbar;
input S,R,rst,clk;
jkflipflop jk9(q,qbar,S,R,rst,clk);
endmodule
