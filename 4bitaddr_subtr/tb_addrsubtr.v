`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////



module tb_addrsubtr();
reg [3:0]a,b;
reg m;
wire c;
wire [3:0]s;

bit_4addrsubtr  m1(a,b,c,s,m);
initial 
begin
a=7;b=11;
#20 
m=0;
#20
m=1;
end
endmodule
