`timescale 1ns / 1ps

module encoder8_3(a,b,c,y);
output a,b,c;
input [7:0]y;
assign c=(y[7]|y[6]|y[5]|y[4]);
assign b=(y[7]|y[6]|y[3]|y[2]);
assign a=(y[7]|y[5]|y[3]|y[1]);
endmodule
