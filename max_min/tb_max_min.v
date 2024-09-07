`timescale 1ns / 1ps



module tb_max_min();
reg [3:0] A,B;
wire [3:0] min,max ;
integer i;
max_min_2 mm1(A,B, min,max );
initial begin
for(i=0;i<15;i=i+1) 
begin
A=$random();
B=$random(); #10;
end
end
endmodule
