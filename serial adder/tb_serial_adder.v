`timescale 1ns / 1ps



module tb_serial_adder();
reg clk,reset,a,b,cin;
wire s,cout;
serial_adder sa( clk,reset,a,b,cin, s,cout);
always #5 clk=~clk;
initial begin
clk=1;
reset=0;
a=0;b=0;cin=0;
reset=1;
#20
reset=0;
a=1;b=1;cin=1; #10;
a=1;b=0;cin=0; #10;
a=1;b=1;cin=0; #10;
a=1;b=1;cin=0; #10;
reset=1;
#20; 
reset=0;
a=1;b=1;cin=1; #10;
a=1;b=0;cin=0; #10;
a=0;b=0;cin=0; #10;
a=1;b=0;cin=0; #10;
a=1;b=1;cin=0; #10;
reset=1;
#10;
end
endmodule
