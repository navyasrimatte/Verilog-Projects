`timescale 1ns / 1ps

module tb_fullsubtr();
wire diff,borrow;
reg a,b,c;
fullsubtr_df  f2(diff,borrow,a,b,c);
initial
begin
a=0;b=0;c=0;
#50
a=0;b=0;c=1;
#50
a=0;b=1;c=0;
#50
a=0;b=1;c=1;
#50
a=1;b=0;c=0;
#50
a=1;b=0;c=1;
#50
a=1;b=1;c=0;
#50
a=1;b=1;c=1;
end
endmodule
