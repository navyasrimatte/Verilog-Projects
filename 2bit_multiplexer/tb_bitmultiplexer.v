`timescale 1ns / 1ps
module tb_bitmultiplexer();
reg [1:0] A,B;
wire [3:0]p;
bit2_multiplexer uut(A,B,p);
initial begin
for(integer i=0;i<10;i=i+1) begin
A=$random();
B=$random(); #10;
end
end
endmodule
