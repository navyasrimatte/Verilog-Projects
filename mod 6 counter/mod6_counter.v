`timescale 1ns / 1ps


module mod6_counter(
    input clk,
    input reset,
    output  [2:0] q
);

    wire t0, t1, t2;
    reg q0, q1, q2;

    // T flip-flop instances
    tflipflop  TFF0 (.t(1'b1), .clk(clk), .reset(reset), .q(q0));  // Always toggles
    tflipflop  TFF1 (.t(q0), .clk(clk), .reset(reset), .q(q1));    // Toggles when q0 is 1
    tflipflop  TFF2 (.t(q0 & q1), .clk(clk), .reset(reset), .q(q2));  // Toggles when q0 and q1 are 1

    // Assign outputs
    assign q = {q2, q1, q0};

    // Additional logic to reset the counter whe
        always @(posedge clk or posedge reset) begin
        if (reset) begin
            {q2, q1, q0} <= 3'b000;
        end else if ({q2, q1, q0} == 3'b110) begin
            {q2, q1, q0} <= 3'b000;
        end
    end

endmodule

 
