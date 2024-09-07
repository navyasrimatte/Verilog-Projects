`timescale 1ns / 1ps


module comp_1bit(a,b,l,e,g);
input a,b;
output l,e,g;
wire w1,w2,w3,w4,w5;
and g1(w1,a,b);
not g2(w2,a);
not g3(w3,b);
and g4(w4,w2,w3);
or g5(e,w1,w4);
and g6(g,a,w3);
and g7(l,w2,b);
endmodule
