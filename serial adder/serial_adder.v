`timescale 1ns / 1ps



module serial_adder(input clk,reset,a,b,cin,output reg s,cout);
reg c,flag;
always@(posedge clk  or posedge reset)
begin
if(reset==1)begin
s=0;
cout=c;
flag=0;
end else begin
if(flag==0)begin
c=cin;
flag=1;
end
cout=0;
s=a^b^c;
c=(a&b)|(c & b)|(a & c);
end
end
endmodule
