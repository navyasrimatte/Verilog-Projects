`timescale 1ns / 1ps

module tb_decibcd();
wire [3:0]y;
reg [9:0]d;
deci_bcdenc d1(y,d);
initial 
begin

#50 d=18;

end
endmodule
