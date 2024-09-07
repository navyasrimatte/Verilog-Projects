`timescale 1ns / 1ps



module JK_Tflipflop(q,qbar,T,rst,clk);
output q,qbar;
input T,rst,clk;
jkflipflop jk(q,qbar,T,T,rst,clk);
endmodule
