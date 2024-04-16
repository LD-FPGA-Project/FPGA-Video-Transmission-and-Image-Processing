`timescale 1ns / 1ps

module sccb_master(
    input clk,
    input rst,
    input start,
    input [7:0] addr,
    input [7:0] data,
    output reg scl,
    inout sda
);

reg [7:0] shift_reg;
reg [2:0] bit_counter;
reg sda_drive;

assign sda = (sda_drive) ? 1'b0 : 1'bz;

localparam STATE_IDLE = 3'd0,
           STATE_START = 3'd1,
           STATE_SHIFT = 3'd2,
           STATE_STOP = 3'd3,
           STATE_ACK = 3'd4;

reg [2:0] state = STATE_IDLE;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= STATE_IDLE;
        scl <= 1'b1;
        sda_drive <= 1'b0;
        bit_counter <= 0;
    end else begin
        case (state)
            STATE_IDLE: begin
                if (start) begin
                    shift_reg <= {addr, 1'b0};  // Address + write bit
                    state <= STATE_START;
                end
                scl <= 1'b1;  // Ensure SCL is high in IDLE
            end
            STATE_START: begin
                sda_drive <= 1'b1;  // Drive SDA low to issue start condition
                scl <= 1'b0;        // Pull SCL low to begin data transmission
                state <= STATE_SHIFT;
            end
            STATE_SHIFT: begin
                if (bit_counter < 8) begin
                    sda_drive <= shift_reg[7];  // Send MSB first
                    shift_reg <= shift_reg << 1; // Shift left for next bit
                    bit_counter <= bit_counter + 1;
                end else begin
                    bit_counter <= 0;
                    sda_drive <= 1'b0;  // Release SDA for ACK
                    state <= STATE_ACK;
                end
                scl <= ~scl;  // Toggle SCL to clock bits
            end
            STATE_ACK: begin
                if (!scl) begin  // Check for ACK on the falling edge of SCL
                    shift_reg <= data;  // Load data for next transmission
                    state <= STATE_SHIFT;
                end
            end
            STATE_STOP: begin
                sda_drive <= 1'b0;  // Ensure SDA is low
                scl <= 1'b1;        // Bring SCL high
                sda_drive <= 1'b1;  // Release SDA to float high for stop condition
                state <= STATE_IDLE;
            end
            default: state <= STATE_IDLE;
        endcase
    end
end

endmodule

