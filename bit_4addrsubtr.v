`timescale 1ns / 1ps

module bit_4addrsubtr(a,b,c,s,m);
input [3:0]a,b;
input m;
output c;
output [3:0]s;
wire [3:0]b_xor_m;
wire c1,c2,c3,c4;

xor x1(b_xor_m[0],b[0],m);
xor x2(b_xor_m[1],b[1],m);
xor x3(b_xor_m[2],b[2],m);
xor x4(b_xor_m[3],b[3],m);

fulladdr fa1(s[0],c1,a[0],b[0],m);
fulladdr fa2(s[1],c1,a[1],b[1],m);
fulladdr fa3(s[2],c1,a[2],b[2],m);
fulladdr fa4(s[3],c1,a[3],b[3],m);

fullsubtr fs1(s[0],c1,a[0],b_xor_m[0],m);
fullsubtr fs2(s[1],c1,a[1],b_xor_m[1],m);
fullsubtr fs3(s[2],c1,a[2],b_xor_m[2],m);
fullsubtr fs4(s[3],c1,a[3],b_xor_m[3],m);

endmodule
