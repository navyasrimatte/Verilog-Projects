`timescale 1ns / 1ps
module decoder2_4(a,b,en);
output [3:0]a;
input [1:0]b;
input en;
wire [1:0]bb;

not(bb[1],b[1]),(bb[1],b[0]);
and(a[0],en,bb[1],bb[0]),(a[1],en,bb[1],b[0]),(a[2],en,b[1],bb[0]),(a[3],en,b[1],b[0]);

endmodule


  