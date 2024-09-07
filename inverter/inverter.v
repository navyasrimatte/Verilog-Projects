`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module inverter(A,out);
input A;
output out;
supply1 vdd;
supply0 gnd;
pmos(out,vdd,A);
nmos(out,gnd,A);
endmodule