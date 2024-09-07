`timescale 1ns / 1ps


module demux1_2(  
  input s,
  input i,
  output [1:0]y );
  assign {y[0],y[1]} = s?{1'b0,i}: {i,1'b0};
endmodule

