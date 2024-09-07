`timescale 1ns / 1ps



module tb_decoder4_16();
wire [15:0]out;
reg e,x,y,z;
decoder4_16 dec(out,e,x,y,z);
initial 
begin
x=0;y=0;z=0;e=0;
#30 x=0;y=0;z=1;e=0;
#30 x=0;y=1;z=0;e=0;
#30 x=0;y=1;z=1;e=0;
#30 x=1;y=0;z=0;e=0;
#30 x=1;y=0;z=1;e=0;
#30 x=1;y=1;z=0;e=0;
#30 x=1;y=1;z=1;e=0;
#30 x=0;y=0;z=0;e=1;
#30 x=0;y=0;z=1;e=1;
#30 x=0;y=1;z=0;e=1;
#30 x=0;y=1;z=1;e=1;
#30 x=1;y=0;z=0;e=1;
#30 x=1;y=0;z=1;e=1;
#30 x=1;y=1;z=0;e=1;
#30 x=1;y=1;z=1;e=1;
end
endmodule
