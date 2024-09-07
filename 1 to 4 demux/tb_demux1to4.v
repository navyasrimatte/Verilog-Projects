`timescale 1ns / 1ps

module tb_demux1to4();
wire [3:0]y;
reg i;
reg [1:0]s;

demux1_4 d1(y,i,s);
initial begin
    s=2'b00; i=0; #100;
   s=2'b00; i=1; #100;
     s=2'b01; i=0; #100;
     s=2'b01; i=1; #100;
     s=2'b10; i=0; #100;
     s=2'b10; i=1; #100;
     s=2'b11; i=0; #100;
     s=2'b11; i=1; #100;
    end
endmodule
