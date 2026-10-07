`timescale 1ns/1ps

module up_counter_4bit_tb;

reg clk;
reg reset;
wire [3:0] count;

up_counter_4bit uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// 10 ns clock period
always #5 clk = ~clk;

initial begin
    $monitor("time=%0t reset=%b count=%b",
             $time, reset, count);

    clk = 0;
    reset = 1;

    // Asynchronous reset
    #10;
    reset = 0;

    // Allow counter to run through multiple cycles
    #170;

    // Test asynchronous reset again
    reset = 1;
    #7;
    reset = 0;

    #20;

    $finish;
end

initial begin
    $dumpfile("waveforms/up_counter_4bit.vcd");
    $dumpvars(0, up_counter_4bit_tb);
end

endmodule
