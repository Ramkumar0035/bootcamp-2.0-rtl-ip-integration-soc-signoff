`timescale 1ns/1ps

module jk_ff (
    input preset,   // Asynchronous active-high reset
    input clk,
    input j,
    input k,
    output reg q,
    output qn
);

assign qn = ~q;

always @(posedge clk or posedge preset) begin
    if (preset)
        q <= 1'b0;
    else begin
        case ({j, k})
            2'b00: q <= q;       // Hold
            2'b01: q <= 1'b0;    // Reset
            2'b10: q <= 1'b1;    // Set
            2'b11: q <= ~q;      // Toggle
        endcase
    end
end

endmodule
