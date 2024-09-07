`timescale 1ns / 1ps

module Fa(input A,B,cin,output s,cout);
assign s=A^B^cin;
assign cout=A&B|B&cin|cin|A;
endmodule
