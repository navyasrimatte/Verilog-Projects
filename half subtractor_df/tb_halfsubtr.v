`timescale 1ns / 1ps


module tb_halfsubtr();
wire difference,borrow;
reg a,b;
halfsubtr_df  s1(difference,borrow, a,b);
initial 
begin
a=0;b=0;
#20
a=0;b=1;
#20
a=1;b=0;
#20
a=1;b=1;
end
endmodule
