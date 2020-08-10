// expects a 12.5 MHz clock
module nes_controller_reader(input               clock,
                             input               reset,

                             // controller interface
                             input               controller_data,
                             output reg          ps,           // strobe line?
                             output reg          ck,           // clock. Aim for 10kHz, I guess?

                             // bits
                             output reg [7:0]    buttons);
    wire div_clk;
    assign div_out = div_clk;
    divide_by_n div(.clk(clock), .reset(reset), .out(div_clk));
    defparam div.N = 128;

    reg [8:0] state;
    reg [7:0] buttons_latch, buttons_latch_next, buttons_next;
    always @(posedge div_clk) begin
        if (!reset) begin
            state <= state + 9'h001;
            buttons_latch <= buttons_latch_next;
            buttons <= buttons_next;
        end else begin
            state <= 9'h000;
            buttons_latch <= 8'h00;
            buttons <= 8'h00;
        end
    end

    always @* begin
        buttons_next = buttons;
        case (state)
            9'h000: begin
                {ps, ck} = {1'b1, 1'b0};
                buttons_latch_next = buttons_latch;
                buttons_latch_next[state[3:1]] = controller_data;
            end

            9'h003, 9'h005, 9'h007, 9'h009, 9'h00b, 9'h00d, 9'h00f: begin
                {ps, ck} = {1'b0, 1'b1};
                buttons_latch_next = buttons_latch;
            end

            9'h004, 9'h006, 9'h008, 9'h00a, 9'h00c, 9'h00e, 9'h010: begin
                {ps, ck} = {1'b0, 1'b0};
                buttons_latch_next = buttons_latch;
                buttons_latch_next[state[4:1] - 3'h1] = controller_data;
            end

            9'h011: begin
                {ps, ck} = {1'b0, 1'b1};
                buttons_latch_next = buttons_latch;
                buttons_next = ~buttons_latch;
            end

            default: begin
                {ps, ck} = 2'h0;
                buttons_latch_next = buttons_latch;
                buttons_next = buttons;
            end
        endcase
    end
endmodule
