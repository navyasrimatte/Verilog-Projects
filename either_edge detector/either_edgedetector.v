`timescale 1ns / 1ps



module either_edgedetector(input D,clk,rst,output  detect);
wire Q;
xor x(detect,Q,D);
 d_ff df( D,clk,rst,Q);
endmodule
