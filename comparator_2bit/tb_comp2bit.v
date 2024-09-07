`timescale 1ns / 1ps


module tb_comp2bit();
reg  [1:0] a,b;
wire l,e,g;
comp_2bit m1(a,b,l,e,g);
initial
begin
a=0;b=0;
#100 a=2'b10;b=2'b11;
#100 a=2'b01;b=2'b11;
end
endmodule
