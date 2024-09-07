`timescale 1ns / 1ps




module halfadder(input a, b, output s0, c0);
  assign s0 = a ^ b;
  assign c0 = a & b;
endmodule


