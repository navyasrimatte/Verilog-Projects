`timescale 1ns / 1ps

module tb_dwncntr();
wire [3:0] cnt;
reg clk,rst;
dwncounter dc1(cnt,clk,rst);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10;
for(integer i=0;i<16;i=i+1) begin
rst=0; #10;
end
end
endmodule

