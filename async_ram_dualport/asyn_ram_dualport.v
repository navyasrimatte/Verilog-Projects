`timescale 1ns / 1ps



module asyn_ram_dualport(input [7:0]din,[3:0]wr_addr,we,rst,clk,re,[3:0]re_addr,output reg [7:0]d_out);
reg [7:0] mem[15:0];
always@(posedge clk or posedge rst)
begin
if(rst)
begin
d_out<=1'b0;
for(integer i=0;i<16;i=i+1)
mem[i]<=0;
end
else
begin
if(we)
mem[wr_addr]<=din;
if(re)
d_out<=mem[re_addr];
end
end
endmodule
