`timescale 1ns / 1ps

module tb_decoder2to4();
    wire [3:0]a;
    reg en;
    reg [1:0]b;

    decoder2_4 d1(a,b,en);

    initial
     begin
        {b,en} = 3'b000;
        #100  {b,en} = 3'b001;
        #100  {b,en} = 3'b011;
        #100  {b,en} = 3'b101;
        #100  {b,en} = 3'b111;
    end
endmodule

