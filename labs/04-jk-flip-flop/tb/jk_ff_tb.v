`timescale 1ns/1ps

module jk_ff_tb;

reg preset;
reg clk;
reg j, k;

wire q;
wire qn;

jk_ff dut (
    .preset(preset),
    .clk(clk),
    .j(j),
    .k(k),
    .q(q),
    .qn(qn)
);

// Clock generation: 10 ns period
always #5 clk = ~clk;

initial begin
    $monitor("%0t | preset=%b j=%b k=%b | q=%b qn=%b",
             $time, preset, j, k, q, qn);

    // Initial values
    clk = 0;
    preset = 1;
    j = 0;
    k = 0;

    // Hold reset
    #7;
    preset = 0;

    // Hold
    #10 j = 0; k = 0;

    // Reset
    #10 j = 0; k = 1;

    // Set
    #10 j = 1; k = 0;

    // Toggle
    #10 j = 1; k = 1;

    // Toggle again
    #10 j = 1; k = 1;

    // Assert asynchronous reset in middle of clock cycle
    #3 preset = 1;
    #4 preset = 0;

    #20;
    $finish;
end

initial begin
    $dumpfile("waveforms/jk_ff_async.vcd");
    $dumpvars(0, jk_ff_tb);
end

endmodule
