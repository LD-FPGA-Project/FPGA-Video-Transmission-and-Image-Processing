`timescale 1ns / 1ps

module ov7670_config(
    input wire clk,
    input wire rst,
    output reg sccb_start,
    output reg [7:0] sccb_addr,
    output reg [7:0] sccb_data,
    input wire sccb_done
);

// Configuration steps
localparam CONFIG_COM7 = 8'h12;
localparam CONFIG_COM7_DATA = 8'h04;  // Set RGB444 format
localparam CONFIG_RGB444 = 8'h8C;
localparam CONFIG_RGB444_DATA = 8'h02;  // Enable RGB444 mode
localparam CONFIG_COM15 = 8'h40;
localparam CONFIG_COM15_DATA = 8'hD0;  // RGB output full range

// State machine to manage configuration process
localparam [2:0]
    IDLE = 3'd0,
    SEND_COM7 = 3'd1,
    WAIT_COM7 = 3'd2,
    SEND_RGB444 = 3'd3,
    WAIT_RGB444 = 3'd4,
    SEND_COM15 = 3'd5,
    WAIT_COM15 = 3'd6,
    DONE = 3'd7;

reg [2:0] state = IDLE;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        sccb_start <= 0;
    end else begin
        case (state)
            IDLE:
                state <= SEND_COM7;
            SEND_COM7: begin
                sccb_addr <= CONFIG_COM7;
                sccb_data <= CONFIG_COM7_DATA;
                sccb_start <= 1;
                state <= WAIT_COM7;
            end
            WAIT_COM7: begin
                sccb_start <= 0;
                if (sccb_done) state <= SEND_RGB444;
            end
            SEND_RGB444: begin
                sccb_addr <= CONFIG_RGB444;
                sccb_data <= CONFIG_RGB444_DATA;
                sccb_start <= 1;
                state <= WAIT_RGB444;
            end
            WAIT_RGB444: begin
                sccb_start <= 0;
                if (sccb_done) state <= SEND_COM15;
            end
            SEND_COM15: begin
                sccb_addr <= CONFIG_COM15;
                sccb_data <= CONFIG_COM15_DATA;
                sccb_start <= 1;
                state <= WAIT_COM15;
            end
            WAIT_COM15: begin
                sccb_start <= 0;
                if (sccb_done) state <= DONE;
            end
            DONE: begin
                // Configuration is complete
            end
            default: state <= IDLE;
        endcase
    end
end

endmodule
