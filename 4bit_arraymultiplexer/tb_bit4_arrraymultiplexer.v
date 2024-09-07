`timescale 1ns / 1ps



module tb_bit4_arrraymultiplexer();
reg [3:0] A,B;
wire [7:0]p;
 bit4_arrraymultiplexer  uut( A,B,p);
 initial begin
 for(integer i=0;i<16;i=i+1) begin
 A=$random();
 B=$random();
 #10;
 end
 end
endmodule