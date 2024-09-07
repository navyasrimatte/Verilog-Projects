`timescale 1ns / 1ps

module max_min_2(input [3:0] A,B,output reg [3:0] min,max );
always @(*) begin
if(A>B) begin
max=A;
end
else
max=B;
end
always @(A or B) begin
if(A<B) begin
min=A;
end
else
min=B;
end
endmodule
