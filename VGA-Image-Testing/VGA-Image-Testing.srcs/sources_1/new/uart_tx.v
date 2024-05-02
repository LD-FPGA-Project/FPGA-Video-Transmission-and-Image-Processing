module UART_TX_CTRL(
    input wire clk,
    input wire rst,
    input wire send,
    input wire [7:0] data,
    output reg ready,
    output reg uart_txd
);

// UART state definitions
localparam IDLE = 0;
localparam START_BIT = 1;
localparam DATA_BITS = 2;
localparam STOP_BIT = 3;
localparam CLEANUP = 4;

integer count;
reg [2:0] state = IDLE;
reg [3:0] bit_index = 0; // to track the data bits being sent

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        uart_txd <= 1'b1; // Idle state high
        ready <= 1'b1;
        count <= 0;
        bit_index <= 0;
    end else begin
        case (state)
            IDLE: begin
                if (send) begin
                    state <= START_BIT;
                    ready <= 1'b0;
                    uart_txd <= 1'b0; // Start bit
                    count <= 0;
                end
            end
            START_BIT: begin
                if (count >= 10416) begin // 10417 counts per bit period at 9600 baud rate
                    state <= DATA_BITS;
                    count <= 0;
                    bit_index <= 0;
                    uart_txd <= data[bit_index];
                end else begin
                    count <= count + 1;
                end
            end
            DATA_BITS: begin
                if (count >= 10416) begin
                    count <= 0;
                    bit_index <= bit_index + 1;
                    if (bit_index < 8) begin
                        uart_txd <= data[bit_index];
                    end else begin
                        state <= STOP_BIT;
                    end
                end else begin
                    count <= count + 1;
                end
            end
            STOP_BIT: begin
                if (count >= 10416) begin
                    uart_txd <= 1'b1; // Stop bit
                    state <= CLEANUP;
                    count <= 0;
                end else begin
                    count <= count + 1;
                end
            end
            CLEANUP: begin
                if (count >= 10416) begin
                    state <= IDLE;
                    ready <= 1'b1;
                end else begin
                    count <= count + 1;
                end
            end
        endcase
    end
end

endmodule
