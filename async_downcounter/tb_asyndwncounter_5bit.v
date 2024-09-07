`timescale 1ns / 1ps



module tb_asyndwncounter_5bit();
wire [4:0] q;
reg clk,rst;
asyndwncounter_5bit as2(q,clk,rst);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #20;
rst=0; 
end
endmodule
