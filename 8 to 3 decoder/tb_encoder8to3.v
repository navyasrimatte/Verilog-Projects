`timescale 1ns / 1ps

module tb_encoder8to3();
wire a,b,c;
reg [7:0]y;
encoder8_3 e1(a,b,c,y);
initial 
begin
y[0]=0;y[1]=0;y[2]=0;y[3]=0;
y[4]=0;y[5]=0;y[6]=0;y[7]=0;
#100;
y[0]=0;y[1]=0;y[2]=0;y[3]=1;
y[4]=0;y[5]=0;y[6]=0;y[7]=0;
#100;
y[0]=0;y[1]=0;y[2]=0;y[3]=0;
y[4]=0;y[5]=1;y[6]=0;y[7]=0;
end
endmodule

