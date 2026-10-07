`timescale 1ns/1ps

module down_counter_4bit_tb;

reg clk;
reg reset;
wire [3:0] count;

down_counter_4bit uut (
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

    // Run through the complete count range
    #170;

    $finish;
end

initial begin
    $dumpfile("waveforms/down_counter_4bit.vcd");
    $dumpvars(0, down_counter_4bit_tb);
end

endmodule
