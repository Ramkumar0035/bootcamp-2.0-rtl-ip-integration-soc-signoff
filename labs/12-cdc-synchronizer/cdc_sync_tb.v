`timescale 1ns/1ps

module cdc_sync_tb;

    reg clk = 0;
    reg async_in = 0;
    wire synced;

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    // Instantiate the DUT
    cdc_synchronizer uut (
        .clk      (clk),
        .async_in (async_in),
        .synced   (synced)
    );

    initial begin

        $dumpfile("waveforms/dump.vcd");
        $dumpvars(0, cdc_sync_tb);

        // Apply asynchronous transitions
        #12 async_in = 1;
        #7  async_in = 0;
        #6  async_in = 1;
        #9  async_in = 0;

        #50 $finish;

    end

endmodule
