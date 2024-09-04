`timescale 1ns / 1ps


module ALU_16bit(input [15:0]A,B,input en,input [3:0] opcode,output reg[31:0] result);
always @(A or B or opcode or en) begin
if(en==1)
case(opcode)
4'b0000:result=A+B;
4'b0000:result=A-B;
4'b0000:result=A*B;
4'b0000:result=A+1;
4'b0000:result=A-1;
4'b0000:result=A;
4'b0000:result=~(A);
4'b0000:result=A&B;
4'b0000:result=A|B;
4'b0000:result=A^B;
4'b0000:result=~(A^B);
4'b0000:result=~(A&B);
4'b0000:result=~(A|B);
4'b0000:result=A<<1;
4'b0000:result=A>>1;
4'b0000:result=A/B;
default :result=16'hxxxx;
endcase
else
result=16'hzzzz;
end
endmodule
