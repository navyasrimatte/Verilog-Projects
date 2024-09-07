`timescale 1ns / 1ps



module jkflipflop(q,qbar,J,K,rst,clk);
output reg q,qbar;
input J,K,rst,clk;
always @(posedge clk)
begin
if(rst)
begin
q<=0;qbar<=1;
end
else begin
case({J,K})
2'b00:{q,qbar}<={q,qbar};
2'b01:{q,qbar}<={1'b0,1'b1};
2'b10:{q,qbar}<={2'b10};
2'b11:{q,qbar}<={qbar,q};
default:begin
end
endcase
end
end
endmodule
