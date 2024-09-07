`timescale 1ns / 1ps
module tb_majority_detector();
reg a,b,c;
wire detect;
majority_detector  md(detect,a,b,c);
initial 
{a,b,c}=0;
initial begin
for(integer i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#10;
end
end
endmodule
