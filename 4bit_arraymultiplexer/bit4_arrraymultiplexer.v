`timescale 1ns / 1ps



module bit4_arrraymultiplexer(input [3:0] A,B,output [7:0]p);
wire [15:0]w;
wire [11:0]I;
wire [5:0]F;
and g1(p[0],A[0],B[0]);
and g2(w[0],A[1],B[0]);
and g3(w[1],A[2],B[0]);
and g4(w[2],A[3],B[0]);


and g5(w[3],A[0],B[1]);
and g6(w[4],A[1],B[1]);
and g7(w[5],A[2],B[1]);
and g8(w[6],A[3],B[1]);

and g9(w[7],A[0],B[2]);
and g10(w[8],A[1],B[2]);
and g11(w[9],A[2],B[2]);
and g12(w[10],A[3],B[2]);

and g13(w[11],A[0],B[3]);
and g14(w[12],A[1],B[3]);
and g15(w[13],A[2],B[3]);
and g16(w[14],A[3],B[3]);

ha k1(w[0],w[3],p[1],I[0]);
Fa k2(w[1],w[4],I[0],F[0],I[1]);
Fa k3(w[2],w[5],I[1],F[1],I[3]);
ha k4(w[6],I[2],F[2],I[3]);

ha k5(w[7],F[0],p[2],I[4]);
Fa k6(w[8],F[1],I[4],F[3],I[5]);
Fa k7(w[9],F[2],I[5],F[4],I[6]);
Fa k8(w[10],I[3],I[6],F[5],I[7]);

ha k9(w[11],F[3],p[3],I[8]);
Fa k10(w[12],F[4],I[8],p[4],I[9]);
Fa k11(w[13],F[5],I[9],p[5],I[10]);
Fa k12(w[14],I[7],I[10],p[6],I[3]);
endmodule

