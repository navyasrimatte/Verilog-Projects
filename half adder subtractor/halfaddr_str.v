`timescale 1ns / 1ps


module halfaddr_str(sum,carry,a,b);
    output sum,carry;
        input a,b;
    xor a1(sum,a,b);
    and  a2(carry,a,b);
    endmodule
