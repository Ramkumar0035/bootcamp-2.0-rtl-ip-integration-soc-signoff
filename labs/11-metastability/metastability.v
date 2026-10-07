`timescale 1ns/1ps

// Module to sample asynchronous input directly
// without synchronization

module metastability (
    input  wire clk,
    input  wire async_in,
    output reg  sampled
);

    always @(posedge clk) begin
        sampled <= async_in;
    end

endmodule
