`timescale 1ns / 1ps
/////////


module tb_LRbarrelshifter();
reg [15:0]A;
reg [3:0] ctrl;
reg control;
wire [15:0] Y;
LR_Barrelshifter uut(A,ctrl,control, Y);
initial begin
for(integer i=0;i<10;i=i+1)
begin
A=$random();
ctrl=$random();
control=$random();
#10
$display("A=%b,ctrl=%b,control=%b,Y=%b",A,ctrl,control,Y);
end
end

endmodule
