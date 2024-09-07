`timescale 1ns / 1ps

module JK_Dflipflop(q,qbar,D,rst,clk);
output q,qbar;
input D,rst,clk;
not g1(w1,D);
JKflipflop jk1(q,qbar,D,w1,rst,clk);

endmodule
