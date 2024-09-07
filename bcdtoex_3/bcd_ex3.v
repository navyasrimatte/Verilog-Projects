`timescale 1ns / 1ps



module bcd_ex3(input [3:0]b,output [3:0] y);
assign y[3]=b[3]|b[2]&b[1]|b[2]&b[0];
assign y[2]=(~b[2])&b[1]|(~b[2])&b[0]|b[2]&(~b[1])&(~b[0]);
assign y[1]=b[1]&b[0]|(~b[1])&(~b[0]);
assign y[0]=(~b[0]);
endmodule
