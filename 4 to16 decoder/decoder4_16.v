`timescale 1ns / 1ps

module decoder4_16(out,e,x,y,z);
output [15:0]out;
input e,x,y,z;
decoder3_8 dec1(out[7:0],e,x,y,z);
decoder3_8 dec2(out[15:8],~e,x,y,z);
    endmodule
