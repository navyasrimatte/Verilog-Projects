`timescale 1ns / 1ps



module arbiter_fp(input clk,rst,[3:0]req,output reg[3:0]grant);
always@(posedge clk)
begin
if(rst)
grant<=0;
else if(req[3])
grant<=4'b1000;
else if(req[2])
grant<=4'b0100;
else if(req[1])
grant<=4'b0010;
else if(req[0])
grant<=4'b0001;
end
endmodule
