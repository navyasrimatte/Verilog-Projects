`timescale 1ns / 1ps

module dflipflop( q,qbar,D,rst,clk);
output reg q,qbar;
input D,rst,clk;
always @(posedge clk)
begin
if(rst)
begin
q<=0;qbar<=1;
end
else begin
case(D)
1'b01:{q,qbar}<={1'b0,1'b1};
1'b10:{q,qbar}<={1'b1,1'b0};
default:begin
end
endcase
end
end
endmodule

