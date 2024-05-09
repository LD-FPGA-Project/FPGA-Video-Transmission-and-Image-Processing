
module UART_TX_CTRL (
    input wire SEND,
    input wire [7:0] DATA,
    input wire CLK,
    output reg READY,
    output reg UART_TX
);


parameter RDY = 2'b00, LOAD_BIT = 2'b01, SEND_BIT = 2'b10;

parameter BIT_TMR_MAX = 10415;
parameter BIT_INDEX_MAX = 10;

reg [13:0] bitTmr = 0;
wire bitDone;
reg [3:0] bitIndex = 0;
reg txBit = 1;
reg [9:0] txData;
reg [1:0] txState = RDY;

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


always @(posedge CLK) begin
    if (txState == RDY) begin
        bitIndex <= 0;
    end else if (txState == LOAD_BIT) begin
        bitIndex <= bitIndex + 1;
    end
end


always @(posedge CLK) begin
    if (SEND) begin
        txData <= {1'b1, DATA, 1'b0};
    end
end

always @(posedge CLK) begin
    if (txState == RDY) begin
        txBit <= 1;
    end else if (txState == LOAD_BIT) begin
        txBit <= txData[bitIndex];
    end
end

always @(*) begin
    UART_TX = txBit;
    READY = (txState == RDY);
end

endmodule
