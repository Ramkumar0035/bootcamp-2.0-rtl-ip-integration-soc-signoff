`timescale 1ns/1ps

module apb_timer #(
    parameter WIDTH = 8
)(
    input  wire             PCLK,
    input  wire             PRESETn,

    input  wire             PSEL,
    input  wire             PENABLE,
    input  wire             PWRITE,
    input  wire [7:0]       PADDR,
    input  wire [31:0]      PWDATA,
    output reg  [31:0]      PRDATA,

    output reg              timer_done
);

    // Internal timer registers
    reg [WIDTH-1:0] load_val;
    reg [WIDTH-1:0] count;
    reg             running;

    // ------------------------------------------------------------
    // APB write path
    // ------------------------------------------------------------
    // Valid APB write:
    // PSEL=1, PENABLE=1, PWRITE=1
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            load_val <= {WIDTH{1'b0}};
            running  <= 1'b0;
        end
        else if (PSEL && PENABLE && PWRITE) begin
            case (PADDR)
                8'h00: load_val <= PWDATA[WIDTH-1:0];

                8'h04: begin
                    running <= PWDATA[0];

                    if (PWDATA[0])
                        count <= load_val;
                end

                default: begin
                    load_val <= load_val;
                    running  <= running;
                end
            endcase
        end
    end

    // ------------------------------------------------------------
    // APB read path
    // ------------------------------------------------------------
    always @(*) begin
        PRDATA = 32'h00000000;

        if (PSEL && !PWRITE) begin
            case (PADDR)
                8'h00:
                    PRDATA = {{(32-WIDTH){1'b0}}, load_val};

                8'h04:
                    PRDATA = {31'b0, running};

                8'h08:
                    PRDATA = {31'b0, timer_done};

                default:
                    PRDATA = 32'h00000000;
            endcase
        end
    end

    // ------------------------------------------------------------
    // Timer logic
    // ------------------------------------------------------------
    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            count      <= {WIDTH{1'b0}};
            timer_done <= 1'b0;
        end
        else begin
            timer_done <= 1'b0;

            if (running) begin
                if (count > 0) begin
                    count <= count - 1'b1;

                    if (count == 1) begin
                        timer_done <= 1'b1;
                        running    <= 1'b0;
                    end
                end
            end
        end
    end

endmodule
