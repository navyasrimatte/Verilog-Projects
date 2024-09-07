`timescale 1ns / 1ps


module tb_bcd_ex3();
reg [3:0] b;
wire [3:0] y;
bcd_ex3 uut(b, y);
initial begin
b=1;#10;
b=2;#10;
b=3;#10;
b=6;#10;
b=9;#10;
b=8;#10;
end
endmodule
