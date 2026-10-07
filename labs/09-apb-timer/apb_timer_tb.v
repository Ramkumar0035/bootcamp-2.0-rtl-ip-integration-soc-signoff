`timescale 1ns/1ps

module apb_timer_tb;

    // APB interface signals
    reg         PCLK;
    reg         PRESETn;
    reg         PSEL;
    reg         PENABLE;
    reg         PWRITE;
    reg [7:0]   PADDR;
    reg [31:0]  PWDATA;

    wire [31:0] PRDATA;
    wire        timer_done;

    // DUT
    apb_timer uut (
        .PCLK       (PCLK),
        .PRESETn    (PRESETn),
        .PSEL       (PSEL),
        .PENABLE    (PENABLE),
        .PWRITE     (PWRITE),
        .PADDR      (PADDR),
        .PWDATA     (PWDATA),
        .PRDATA     (PRDATA),
        .timer_done (timer_done)
    );

    // Clock generation
    initial PCLK = 1'b0;
    always #5 PCLK = ~PCLK;

    // Monitor timer completion
    always @(posedge timer_done) begin
        $display("Time=%0t ns : TIMER DONE", $time);
    end

    // ------------------------------------------------------------
    // APB WRITE
    // ------------------------------------------------------------
    task apb_write;
        input [7:0]  addr;
        input [31:0] data;

        begin
            // Setup phase
            @(posedge PCLK);
            PSEL    = 1'b1;
            PWRITE  = 1'b1;
            PENABLE = 1'b0;
            PADDR   = addr;
            PWDATA  = data;

            // Access phase
            @(posedge PCLK);
            PENABLE = 1'b1;

            @(posedge PCLK);
            PSEL    = 1'b0;
            PENABLE = 1'b0;
            PWRITE  = 1'b0;
        end
    endtask

    // ------------------------------------------------------------
    // APB READ
    // ------------------------------------------------------------
    task apb_read;
        input [7:0] addr;

        begin
            // Setup phase
            @(posedge PCLK);
            PSEL    = 1'b1;
            PWRITE  = 1'b0;
            PENABLE = 1'b0;
            PADDR   = addr;

            // Access phase
            @(posedge PCLK);
            PENABLE = 1'b1;

            @(posedge PCLK);
            $display("Read [0x%0h] = %0d",
                     addr, PRDATA);

            PSEL    = 1'b0;
            PENABLE = 1'b0;
        end
    endtask

    // ------------------------------------------------------------
    // Test sequence
    // ------------------------------------------------------------
    initial begin

        $dumpfile("waveforms/apb_timer.vcd");
        $dumpvars(0, apb_timer_tb);

        // Initial values
        PSEL    = 1'b0;
        PENABLE = 1'b0;
        PWRITE  = 1'b0;
        PADDR   = 8'h00;
        PWDATA  = 32'h00000000;

        // Apply reset
        PRESETn = 1'b0;
        #10;
        PRESETn = 1'b1;

        // Program load value = 5
        apb_write(8'h00, 5);

        // Start timer
        apb_write(8'h04, 1);

        // Wait and read status
        #80;
        apb_read(8'h08);

        // Program load value = 3
        apb_write(8'h00, 3);

        // Start timer again
        apb_write(8'h04, 1);

        // Read status after delay
        #50;
        apb_read(8'h08);

        #50;
        $finish;

    end

endmodule
