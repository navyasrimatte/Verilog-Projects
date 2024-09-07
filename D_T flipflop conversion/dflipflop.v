`timescale 1ns / 1ps


module dflipflop( q,qbar,T,rst,clk);
output reg q,qbar;
input T,rst,clk;
always @(posedge clk)
begin
if(rst)
begin
q<=0;qbar<=1;
end
else begin
case(T)
1'b01:{q}={q};
1'b10:{q}={~q};
default:begin
end
endcase
end
end
endmodule
   
