`timescale 1ns / 1ps


module demux1_4(y,i,s);
output reg [3:0]y;
input i;
input [1:0]s;
always @(*)
begin
case(s)
2'b00:{y[0],y[1],y[2],y[3]}={i,3'b0};
2'b01:{y[0],y[1],y[2],y[3]}={1'b0,i,2'b0};
2'b10:{y[0],y[1],y[2],y[3]}={2'b0,i,1'b0};
2'b11:{y[0],y[1],y[2],y[3]}={3'b0,i};
endcase
end
   endmodule



