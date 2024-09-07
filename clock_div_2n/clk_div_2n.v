`timescale 1ns / 1ps



module clk_div_2n(input clk,rst,en,output div4,div8,div16,div32);
reg [4:0] cnt;
always@(posedge clk) begin
if(rst)
cnt<=5'd0;
else if(en) begin
if(cnt==5'd31)
cnt<=0;
else
cnt<=cnt+1;
end
end
assign div4=cnt[1];
assign div8=cnt[2];
assign div16=cnt[3];
assign div32=cnt[4];
endmodule
