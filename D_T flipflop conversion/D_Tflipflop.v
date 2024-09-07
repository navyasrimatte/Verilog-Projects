`timescale 1ns / 1ps



module D_Tflipflop(q,qbar,clk,rst,D);
output q,qbar;
input clk,rst,D;
wire w1;
xor g1(w1,D,q);
dflipflop d4( q,qbar,w1,rst,clk);
endmodule
