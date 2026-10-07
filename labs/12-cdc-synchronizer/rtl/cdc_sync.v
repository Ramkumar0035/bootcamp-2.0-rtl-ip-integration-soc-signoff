`timescale 1ns/1ps

// 2-stage synchronizer module to handle asynchronous input

module cdc_synchronizer (
    input  wire clk,
    input  wire async_in,
    output reg  synced
);

    reg stage1;

    // Two-stage flip-flop chain for synchronization
    always @(posedge clk) begin
        stage1 <= async_in;
        synced <= stage1;
    end

endmodule
