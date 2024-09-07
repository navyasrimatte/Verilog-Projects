`timescale 1ns / 1ps

module johnsoncounter(q,clk,rst);
output [3:0]q;
input clk,rst;
reg [3:0]A;
always @(posedge clk) begin
if(rst)
A=4'b1000;
else begin
A={~A[0],A[3:1]};
end
end
assign q=A;
endmodule
