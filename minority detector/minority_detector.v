`timescale 1ns / 1ps



module minority_detector(detect,a,b,c);
input a,b,c;
output detect;
wire w1,w2,w3;
and a1(w1,a,b);
and a2(w2,b,c);
and a3(w3,a,c);
assign detect= ~(w1|w2|w3);
endmodule
