`timescale 1ns / 1ps

module tflipflop(
    input t,
    input clk,
    input reset,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else if (t)
            q <= ~q;
    end
endmodule

