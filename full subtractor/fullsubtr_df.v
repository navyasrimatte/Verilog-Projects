`timescale 1ns / 1ps

module fullsubtr_df(diff,borrow,a,b,c);
    output diff,borrow;
    input a,b,c;
    assign diff=a^b^c;
    assign borrow=(~a&b)|(~(a^b)&c);
endmodule
