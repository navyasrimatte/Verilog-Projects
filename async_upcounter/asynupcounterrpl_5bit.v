`timescale 1ns / 1ps

module asynupcounterrpl_5bit(q,clk,rst);
output [4:0] q;
input clk,rst;
tflipflop t1(q[0],rst,1'b1,clk);
tflipflop t2(q[1],rst,1'b1,q[0]);
tflipflop t3(q[2],rst,1'b1,q[1]);
tflipflop t4(q[3],rst,1'b1,q[2]);
tflipflop t5(q[4],rst,1'b1,q[3]);
endmodule
