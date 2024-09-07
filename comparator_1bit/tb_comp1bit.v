`timescale 1ns / 1ps
module tb_comp1bit();
reg a,b;
wire l,e,g;
comp_1bit c1(a,b,l,e,g);
initial 
begin
a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end
endmodule
