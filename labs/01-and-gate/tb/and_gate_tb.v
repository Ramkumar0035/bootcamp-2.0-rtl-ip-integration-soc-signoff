`timescale 1ns/1ps

module and_gate_tb;

reg A;
reg B;
wire out;

and_gate_design uut(.A(A), .B(B), .out(out));

initial begin
    $monitor("time=%0t A=%b B=%b out=%b", $time, A, B, out);

    A = 1'b0; B = 1'b0; #10;
    A = 1'b0; B = 1'b1; #10;
    A = 1'b1; B = 1'b0; #10;
    A = 1'b1; B = 1'b1; #10;

    $finish;
end

initial begin
    $dumpfile("dump_and_gate.vcd");
    $dumpvars(0, and_gate_tb);
end

endmodule
