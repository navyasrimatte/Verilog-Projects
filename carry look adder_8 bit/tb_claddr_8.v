`timescale 1ns / 1ps

module tb_claddr_8();
reg [7:0]a,b;
reg cin;
wire cout;
wire [7:0]sum;
wire PG;
wire GG;
crylookaheadaddr_8 m1(a,b,cin,cout,sum);
initial
begin
 a=8'b00000000;b=8'b00000000; cin=0;
  #100 a=8'b00011011; b=8'b11010111; 
  end
endmodule
