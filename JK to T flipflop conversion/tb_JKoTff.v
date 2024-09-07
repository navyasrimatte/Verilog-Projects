`timescale 1ns / 1ps



module tb_JKoTff();
wire q,qbar;
reg T,rst,clk;
JK_Tflipflop u1(q,qbar,T,rst,clk);
always #5 clk=~clk;
initial clk=0;
initial begin
rst=1; #10
rst=0;
T=0; #20;
T=1; #30;
T=0; #20;
T=1; #30;
T=0; #20;
T=1; #30;
T=0; #20;
T=1; #30;
end
endmodule

