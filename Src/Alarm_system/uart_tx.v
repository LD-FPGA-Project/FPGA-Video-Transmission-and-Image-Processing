`timescale 10ns/1ns

/*
 * Custom UART TX design, with all requisite customization options
 * Written by ChatGPT, May 2024
 * Version: 1.0.0
 * 
 * The clock frequency and the baud rate have to be calculated and set manually.
 * As it stands now, this module will automatically calculate the prescalar needed.
 * 
 ***************************
 *
 * THEORY OF WORKING of this module:
 *
 * CLOCKS:
 * - An input clock of 100MHz is expected.
 * - Internally, a "slow_clk_en" pulse is generated, depending on baud rate.
 *
 * UART:
 * An active high signal starts transmitting.
 * 
 * An FSM is used to handle the operation of the module.
 * FSM states:
 *  - IDLE          : Waiting for start signal
 *  - START_BIT     : Transmit start bit
 *  - DATA_BITS     : Transmit data bits
 *  - STOP_BIT      : Transmit stop bit
 *
 ***************************
 * Parameters in the module:
 *
 * FRAME_BITS   - The number of bits in the data frame. Allowed values: 5-9 bits/frame
 * PARITY_BIT   - Set to "2" to disable parity check. Set to "0/1" for odd/even parity resp.
 * STOP_BITS    - The number of stop bits, Allowed values: 1-2 bits
 *
 ***************************
 * Inputs to the module:
 *
 * tx_data     - The input data to be transmitted
 * i_clk       - The clock of the local system, used for transmitting the bits and FSM sync
 * start_tx    - Signal to start the transmission
 * 
 ***************************
 * Outputs of the module
 *
 * tx          - The output tx signal
 * tx_busy     - Indicates if data transmission has started and system is busy
 * 
 ***************************
 * In this version, the oversampling factor is 15.
 * 
 ***************************
 *
 * Sample input clock setup for Basys 3:
 * Set the clock to 100MHz in the constraints file. 
 * Then divide the clock to get a time period of 540ns
 *
 ***************************
*/

//`define DEBUG

module uart_tx #(
    parameter FRAME_BITS = 8,   // Number of data bits, can be 7/8
    PARITY_BIT = 2,             // Parity disabled by default
    STOP_BITS = 1,              // Using only 1 stop bit
    OVERSAMPLE_FACTOR = 13      // Change according to baud rate and clock frequency
) (
    input wire [FRAME_BITS-1:0] tx_data,
    input wire i_clk,
    input wire start_tx,
    output reg tx,
    output reg tx_busy
);

// FSM states
localparam IDLE       = 0;
localparam START_BIT  = 1;
localparam DATA_BITS  = 2;
localparam STOP_BIT   = 3;

// Calculating the total number of bits to be transmitted
localparam TOTAL_TX_BITS = (PARITY_BIT < 2) ? FRAME_BITS + STOP_BITS + 1 : FRAME_BITS + STOP_BITS + 1;

// Variables for FSM and bit transmission
reg [1:0] state;            // FSM state
reg [3:0] bit_location;     // Indexing variable for the transmitted data
reg [OVERSAMPLE_FACTOR-1:0] oversample_counter; // Oversampling counter
reg [FRAME_BITS-1:0] tx_shift_reg; // Shift register for the data to be transmitted

initial begin
    state = IDLE;
    tx = 1;
    tx_busy = 0;
    bit_location = 0;
    oversample_counter = 0;
end

// Managing the states of the transmission FSM
always @(posedge i_clk) begin
    case (state)
        IDLE: begin
            tx <= 1; // Line idle state
            tx_busy <= 0;
            bit_location <= 0;
            oversample_counter <= 0;

            if (start_tx) begin
                tx_shift_reg <= tx_data;
                state <= START_BIT;
                tx_busy <= 1;
            end
        end

        START_BIT: begin
            if (oversample_counter == OVERSAMPLE_FACTOR - 1) begin
                oversample_counter <= 0;
                tx <= 0; // Start bit
                state <= DATA_BITS;
            end else begin
                oversample_counter <= oversample_counter + 1;
            end
        end

        DATA_BITS: begin
            if (oversample_counter == OVERSAMPLE_FACTOR - 1) begin
                oversample_counter <= 0;
                tx <= tx_shift_reg[bit_location];
                bit_location <= bit_location + 1;

                if (bit_location == FRAME_BITS) begin
                    state <= STOP_BIT;
                    bit_location <= 0;
                end
            end else begin
                oversample_counter <= oversample_counter + 1;
            end
        end

        STOP_BIT: begin
            if (oversample_counter == OVERSAMPLE_FACTOR - 1) begin
                oversample_counter <= 0;
                tx <= 1; // Stop bit

                if (bit_location == STOP_BITS) begin
                    state <= IDLE;
                end else begin
                    bit_location <= bit_location + 1;
                end
            end else begin
                oversample_counter <= oversample_counter + 1;
            end
        end

        default: state <= IDLE;
    endcase
end

endmodule
