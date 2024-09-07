`timescale 1ns / 1ps


module tb_fulladdr();
reg a,b,c;
wire sum,carry;
fuladdr_df f1(sum,carry,a,b,c);
initial 
begin
a=0;b=0;c=0;
#10
a=0;b=0;c=1;
#20
a=0;b=1;c=0;
#30
a=0;b=1;c=1;
#40
a=1;b=0;c=0;
#20
a=1;b=0;c=1;
#20
a=1;b=1;c=0;
#20
a=1;b=1;c=1;
end
endmodule
