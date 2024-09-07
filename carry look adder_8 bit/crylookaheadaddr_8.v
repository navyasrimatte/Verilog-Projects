`timescale 1ns / 1ps

module crylookaheadaddr_8(a,b,cin,cout,sum);
input [7:0]a,b;
input cin;
output cout;
output [7:0]sum;
wire p3,p7;
wire g3,g7;
wire c3,c7;
claddr_4 c1(a[3:0],b[3:0], cin,c3,p3,g3, sum[3:0]);
claddr_4 c2(a[7:4],b[7:4],c3,c7,p7,g7 , sum[7:4]);


endmodule
