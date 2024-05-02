// UART_TX_CTRL.v -- UART Data Transfer Component
// ----------------------------------------------------------------------------
// Author:  Sam Bobrowicz
//          Copyright 2011 Digilent, Inc.
// ----------------------------------------------------------------------------
//
// This component may be used to transfer data over a UART device. It will
// serialize a byte of data and transmit it over a TXD line. The serialized
// data has the following characteristics:
//         *9600 Baud Rate
//         *8 data bits, LSB first
//         *1 stop bit
//         *no parity
// 				
// Port Descriptions:
//
//    SEND - Used to trigger a send operation. The upper layer logic should 
//           set this signal high for a single clock cycle to trigger a 
//           send. When this signal is set high DATA must be valid . Should 
//           not be asserted unless READY is high.
//    DATA - The parallel data to be sent. Must be valid the clock cycle
//           that SEND has gone high.
//    CLK  - A 100 MHz clock is expected
//   READY - This signal goes low once a send operation has begun and
//           remains low until it has completed and the module is ready to
//           send another byte.
// UART_TX - This signal should be routed to the appropriate TX pin of the 
//           external UART device.
//   
// Revision History:
//  08/08/2011(SamB): Created using Xilinx Tools 13.2
// ----------------------------------------------------------------------------

module UART_TX_CTRL (
    input wire SEND,
    input wire [7:0] DATA,
    input wire CLK,
    output reg READY,
    output reg UART_TX
);

// State Definitions
parameter RDY = 2'b00, LOAD_BIT = 2'b01, SEND_BIT = 2'b10;

parameter BIT_TMR_MAX = 10415; // (round(100MHz / 9600)) - 1
parameter BIT_INDEX_MAX = 10;

// Signals
reg [13:0] bitTmr = 0;
wire bitDone;
reg [3:0] bitIndex = 0;
reg txBit = 1;
reg [9:0] txData;
reg [1:0] txState = RDY;

// Next state logic
always @(posedge CLK) begin
    case (txState)
        RDY: begin
            if (SEND) txState <= LOAD_BIT;
        end
        LOAD_BIT: begin
            txState <= SEND_BIT;
        end
        SEND_BIT: begin
            if (bitDone) begin
                if (bitIndex == BIT_INDEX_MAX)
                    txState <= RDY;
                else
                    txState <= LOAD_BIT;
            end
        end
    endcase
end

// Bit timing process
always @(posedge CLK) begin
    if (txState == RDY) begin
        bitTmr <= 0;
    end else if (bitDone) begin
        bitTmr <= 0;
    end else begin
        bitTmr <= bitTmr + 1;
    end
end

assign bitDone = (bitTmr == BIT_TMR_MAX);

// Bit counting process
always @(posedge CLK) begin
    if (txState == RDY) begin
        bitIndex <= 0;
    end else if (txState == LOAD_BIT) begin
        bitIndex <= bitIndex + 1;
    end
end

// TX data latch process
always @(posedge CLK) begin
    if (SEND) begin
        txData <= {1'b1, DATA, 1'b0};
    end
end

// TX bit process
always @(posedge CLK) begin
    if (txState == RDY) begin
        txBit <= 1;
    end else if (txState == LOAD_BIT) begin
        txBit <= txData[bitIndex];
    end
end

// Output assignments
always @(*) begin
    UART_TX = txBit;
    READY = (txState == RDY);
end

endmodule
