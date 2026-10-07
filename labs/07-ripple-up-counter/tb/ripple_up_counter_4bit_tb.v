`timescale 1ns/1ps

module ripple_up_counter_tb;

reg clk;
reg reset;
wire [3:0] q;

ripple_up_counter_4bit uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// 10 ns clock period
always #5 clk = ~clk;

initial begin
    $display("Time\treset\tq");
    $monitor("%0dns\t%b\t%b", $time, reset, q);

    clk = 0;
    reset = 1;

    // Apply reset
    #10;
    reset = 0;

    // Allow counter to run
    #200;

    $finish;
end

initial begin
    $dumpfile("waveforms/ripple_up_counter_4bit.vcd");
    $dumpvars(0, ripple_up_counter_tb);
end

endmodule
