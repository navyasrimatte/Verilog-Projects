`timescale 1ns / 1ps

module tflipflop(rst,clk,T,CLR,q);
input rst,clk,T,CLR;
output reg [3:0]q;
always @(CLR) q<=0;
always @(negedge clk)
begin
if(rst)
q<=0;
else begin
case(T)
1'b0:q=q;
1'b1:q=-q;
endcase
end
end
endmodule

