`timescale 1ns / 1ps


module tb_ALU();
reg [15:0] A,B;
reg en;
reg [3:0] opcode;
wire [31:0] result;
ALU_16bit al(A,B,en,opcode, result);
initial begin
for(integer i=0;i<20;i=i+1) begin
A=$random();
B=$random();
en=1;
opcode= $random();
 #10;
end
end
endmodule
