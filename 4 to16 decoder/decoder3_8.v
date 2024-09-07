`timescale 1ns / 1ps
module decoder3_8(out,e,x,y,z);
output [7:0]out;
input e,x,y,z;
assign out[0]=~e&(~x)&(~y)&(~z);
assign out[1]=~e&(~x)&(~y)&(z);
assign out[2]=~e&(~x)&(y)&(~z);
assign out[3]=~e&(~x)&(y)&(z);
assign out[4]=~e&(x)&(~y)&(~z);
assign out[5]=~e&(x)&(~y)&(z);
assign out[6]=~e&(x)&(y)&(~z);
assign out[7]=~e&(x)&(y)&(z);
endmodule
