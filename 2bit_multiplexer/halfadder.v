`timescale 1ns / 1ps



module halfadder(input A,B,output s,c);
assign s=A^B;
assign c=A&B;
endmodule
