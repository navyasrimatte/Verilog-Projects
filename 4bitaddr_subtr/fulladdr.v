`timescale 1ns / 1ps


module fulladdr(sum,carry,a,b,c);
    output sum,carry;
    input a,b,c;
    
    assign sum=a^b^c;
    assign carry=(a&b)|(b&c)|(c &a);
    endmodule
