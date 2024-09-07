`timescale 1ns / 1ps



module tb_mod6_counter();
    reg clk;
    reg reset;
    wire [2:0] q;

    // Instantiate the mod6_counter module
    mod6_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Apply stimulus
    initial begin
        // Initialize reset
        reset = 1;
        #10;
        reset = 0;
        
        // Run the counter for a while to see the behavior
        #100;

        // Reset the counter again
        reset = 1;
        #10;
        reset = 0;
        
        #50;

        // Finish the simulation
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%d: q=%b", $time, q);
    end

endmodule

