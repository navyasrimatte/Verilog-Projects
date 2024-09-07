`timescale 1ns / 1ps
module tb_halfaddr();
wire sum,carry;
reg a,b;
halfaddr_str  h1(sum,carry,a,b);
initial 
begin
a=0;b=0;
#10
a=0;b=1;
#20
a=1;b=0;
#30
a=1;b=1;
end
endmodule
