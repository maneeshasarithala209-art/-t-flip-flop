`timescale 1ns/1ps

module tb_t_flipflop;

    reg clk;
    reg reset;
    reg T;

    wire Q;
    wire Qbar;

    // Instantiate T flip-flop
    t_flipflop uut (
        .clk   (clk),
        .reset (reset),
        .T     (T),
        .Q     (Q),
        .Qbar  (Qbar)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        clk   = 1'b0;
        reset = 1'b1;
        T     = 1'b0;

        $display("Time\tReset\tT\tQ\tQbar");

        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, T, Q, Qbar);

        // Reset
        #10;
        reset = 1'b0;

        // T = 0 → Hold
        #10;
        T = 1'b0;

        // T = 1 → Toggle
        #10;
        T = 1'b1;

        // Toggle again
        #10;
        T = 1'b1;

        // Toggle again
        #10;
        T = 1'b1;

        // T = 0 → Hold
        #10;
        T = 1'b0;

        #10;

        $finish;
    end

endmodule