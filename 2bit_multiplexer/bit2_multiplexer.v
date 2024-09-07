`timescale 1ns / 1ps


module bit2_multiplexer(input [1:0]A,B,
output [3:0]p);
wire [3:0]w;
and g1(p[0],A[0],B[0]);
and g2(w[0],A[0],B[1]);
and g3(w[1],A[1],B[0]);
and g4(w[2],A[1],B[1]);
halfadder mo(w[1],w[0],p[1],w[3]);
halfadder m1(w[2],w[3],p[2],p[3]);
endmodule


