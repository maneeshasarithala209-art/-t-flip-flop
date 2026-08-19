`timescale 1ns/1ps

module t_flipflop (
    input  wire clk,
    input  wire reset,
    input  wire T,
    output reg Q,
    output wire Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else begin
            if (T == 1'b0)
                Q <= Q;       // Hold
            else
                Q <= ~Q;      // Toggle
        end
    end

endmodule