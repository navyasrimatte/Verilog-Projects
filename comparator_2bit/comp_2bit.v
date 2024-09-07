`timescale 1ns / 1ps

module comp_2bit(a,b,l,e,g);
input [1:0] a,b;
output l,e,g;
 wire [1:0] p,q,r;
 wire w1,w2;
  comp_1bit c1(a[0],b[0],p[0],q[0],r[0]);
  comp_1bit c2(a[1],b[1],p[1],q[1],r[1]);
  and g1(e,q[0],q[1]);
 and g2(w1,q[1],p[0]);
 and g3(w2,q[1],r[0]);
 or g4(g,r[1],w2);
 or g5(l,p[1],w1);
 
endmodule
