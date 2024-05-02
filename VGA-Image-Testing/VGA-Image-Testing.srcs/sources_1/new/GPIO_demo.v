module GPIO_demo(
    input wire i_top_clk,                 // System Clock
    input wire i_top_rst,                 // Reset
    output wire UART_TXD            // UART transmit line
);

    wire uartReady;
    reg uartSend = 0;
    reg [7:0] uartData;
    UART_TX_CTRL uart_tx_ctrl (
        .SEND(uartSend),
        .DATA(uartData),
        .CLK(i_top_clk),
        .READY(uartReady),
        .UART_TX(UART_TXD)
    );
   // UART Communication Logic
    // Define UART states
    parameter [2:0]
        UART_IDLE = 0,
        UART_SEND = 1,
        UART_WAIT = 2;

    reg [2:0] uartState = UART_IDLE;
    integer uartIndex = 0;

    always @(posedge i_top_clk) begin
        case (uartState)
            UART_IDLE: begin
                    uartData <= 8'h41;  // Send 'A' when any button is pressed
                    uartSend <= 1;
                    uartState <= UART_SEND;
                end

            UART_SEND:
                if (uartReady) begin
                    uartSend <= 0;
                    uartState <= UART_WAIT;
                end

            UART_WAIT:
                if (!uartReady) begin
                    uartState <= UART_IDLE;
                end
        endcase
    end
  

endmodule
