`timescale 1ns / 1ps


module tb_bintogray();
wire [4:0]b;
reg [4:0] a;
bin_gray  b1(b,a);
initial 
begin
a=4'b0000;
#100 a=4'b1011;
#100 a=4'b0111;
end
endmodule
