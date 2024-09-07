`timescale 1ns / 1ps



module tb_inverter();

reg A;
wire out;
inverter iv1(A,out);
initial begin
A=1'b1; #10;
A=1'b0; #20;
end
endmodule

