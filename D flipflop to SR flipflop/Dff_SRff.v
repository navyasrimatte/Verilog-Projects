`timescale 1ns / 1ps
module Dff_SRff(q,qbar,clk,rst,S,R);
output q,qbar;
input clk,rst,S,R;
wire w1,w2,w3;
not g1(w1,R);
and g2(w2,w1,q);
or g3(w3,w2,S);
dflipflop df1( q,qbar,w3,rst,clk);
endmodule

 