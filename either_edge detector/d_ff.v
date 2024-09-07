`timescale 1ns / 1ps



module d_ff(input D,clk,rst,output reg Q);
always @(posedge clk)
begin
if(rst)
Q<=0;
else
Q<=D;
end
endmodule


