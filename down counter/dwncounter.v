`timescale 1ns / 1ps


module dwncounter(cnt,clk,rst);
output reg [3:0] cnt;
input clk,rst;
always @(posedge clk) begin
if(rst)
cnt<=4'b1111;
else
cnt<=cnt-1;
end
endmodule
 
