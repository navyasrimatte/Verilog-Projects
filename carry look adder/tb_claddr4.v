`timescale 1ns / 1ps



module tb_claddr4();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
claddr_4 c1(a,b, cin, sum,cout);
initial 
begin
 a=0; b=0; cin=0;
  #100 a=4'd0; b=4'd0; cin=1'd1;
  #100 a=4'd14; b=4'd1; cin=1'd1;
  end
endmodule
