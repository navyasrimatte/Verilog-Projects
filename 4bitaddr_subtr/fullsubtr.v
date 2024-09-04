`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2024 21:22:49
// Design Name: 
// Module Name: fullsubtr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fullsubtr(diff,borrow,a,b,c);
    output diff,borrow;
    input a,b,c;
    assign diff=a^b^c;
    assign borrow=(~a&b)|(~(a^b)&c);
endmodule

