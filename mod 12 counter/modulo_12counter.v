`timescale 1ns / 1ps



module modulo_12counter(clk,rst,q);
input clk,rst;
output [3:0]q;
wire w1,w2,w3;
not g1(w1,q[0]);
not g2(w2,q[1]);
nand g3(w3,w1,w2,q[3],q[2]);
tflipflop t1(rst,1'b1,clk,w3,q[0]);
tflipflop t2(q[0],rst,1'b1,w3,q[1]);
tflipflop t3(q[1],rst,1'b1,w3,q[2]);
tflipflop t4(q[2],rst,1'b1,w3,q[3]);
endmodule
