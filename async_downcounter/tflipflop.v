`timescale 1ns / 1ps


module tflipflop(q,rst,clk,T);
output reg q;
input rst,clk,T;
always @(posedge clk)
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

