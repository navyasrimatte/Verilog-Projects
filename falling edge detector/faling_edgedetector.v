`timescale 1ns / 1ps
module faling_edgedetector(input clk,rst,D,output Detect);
wire Q;
and  a1(Detect,Q,~D);
d_ff_behv dff(D,clk,rst,Q);
endmodule


