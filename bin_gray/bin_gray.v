`timescale 1ns / 1ps

module bin_gray(b,a);
output  [4:0] b;
input [4:0] a;
assign b[4]= a[4];
assign b[3]= a[4]^a[3];
assign b[2]= a[3]^a[2];
assign b[1]= a[2]^a[1];
assign b[0]= a[1]^a[0];
endmodule
