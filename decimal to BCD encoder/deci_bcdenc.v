`timescale 1ns / 1ps

module deci_bcdenc(y,d);
output reg [3:0]y;
input [9:0]d;
always @(*)
begin
casex(d)
10'b0000000001:y=4'b0000;
10'b000000001x:y=4'b0001;
10'b00000001xx:y=4'b0010;
10'b0000001xxx:y=4'b0011;
10'b000001xxxx:y=4'b0100;
10'b00001xxxxx:y=4'b0101;
10'b0001xxxxxx:y=4'b0110;
10'b001xxxxxxx:y=4'b0111;
10'b01xxxxxxxx:y=4'b1000;
10'b1xxxxxxxxx:y=4'b1001;
default:y=4'b0000;
endcase
end
endmodule
