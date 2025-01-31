`timescale 1ns/100ps

module uart_tx(
    input             clk_i,
    input             reset_i,
    input             baud_clk_i,

    input             data_valid_i,
    input [7:0]       data_i,

    output logic        uart_tx_o,
    output logic        uart_busy_o
);
    logic [9:0] shift_register;
    logic [3:0] shift_count;

    logic baud_clk_prev;

    always @(posedge clk_i) begin
        baud_clk_prev <= baud_clk_i;

        if (uart_busy_o) begin
            if (shift_count == 4'd10) begin
                shift_register <= 10'hxxx;
                shift_count <= 4'h0;
                uart_busy_o <= 1'b0;
                uart_tx_o <= uart_tx_o;
            end else begin
                if (baud_clk_i && !baud_clk_prev) begin
                    shift_register <= { 1'b0, shift_register[9:1] };
                    shift_count <= shift_count + 4'h1;
                    uart_busy_o <= 1'b1;
                    uart_tx_o <= shift_register[0];
                end else begin
                    shift_register <= shift_register;
                    shift_count <= shift_count;
                    uart_busy_o <= uart_busy_o;
                    uart_tx_o <= uart_tx_o;
                end
            end
        end else begin
            uart_tx_o <= 1'b1;
            if (data_valid_i) begin
                shift_register <= { 1'b1, data_i, 1'b0 };
                shift_count <= 4'h0;
                uart_busy_o <= 1'b1;
            end else begin
                shift_register <= shift_register;
                shift_count <= shift_count;
                uart_busy_o <= uart_busy_o;
            end
        end

        if (reset_i) begin
            shift_register <= 9'hxxx;
            shift_count <= 4'h0;
            uart_tx_o <= 1'b1;
            uart_busy_o <= 1'b0;
            baud_clk_prev <= baud_clk_i;
        end
    end
endmodule

/**
 * This test module prints the letter 'a' once every PRINT_PERIOD clock cycles.
 */
module uart_traffic_generator #(
    parameter PRINT_PERIOD = 5_000_000
)  (
    input clk_i,
    input reset_i,

    output logic uart_data_valid_o,
    output logic [7:0] uart_data_o
);
    logic [31:0] print_period_counter;

    always_comb uart_data_o = 8'h61;

    always_ff @(posedge clk_i) begin
        if (print_period_counter == (PRINT_PERIOD - 1)) begin
            print_period_counter <= '0;
            uart_data_valid_o <= '1;
        end else begin
            print_period_counter <= print_period_counter + 1;
            uart_data_valid_o <= '0;
        end

        if (reset_i) begin
            print_period_counter <= '0;
            uart_data_valid_o <= '0;
        end
    end
endmodule
