`timescale 1ns / 1ps

module halfsubtr_df(difference,borrow, a,b);
    output difference,borrow;
    input a,b;
    wire w1;
    assign difference=a^b;
    assign borrow=~a&b;
endmodule
