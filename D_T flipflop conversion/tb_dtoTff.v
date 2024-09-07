`timescale 1ns / 1ps



module tb_dtoTff();
wire q,qbar;
reg clk,rst,D;
D_Tflipflop d7(q,qbar,clk,rst,D);
 always #10 clk=~clk;
initial clk=0;
initial begin
rst=1; #40
rst=0;
D=0; #10;
D=1; #20;
D=0; #10;
D=1; #20;
end
endmodule
