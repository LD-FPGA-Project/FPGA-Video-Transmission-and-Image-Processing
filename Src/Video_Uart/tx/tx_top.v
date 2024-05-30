module tx_top (
    input wire i_top_clk,
    input wire i_top_rst,
    input wire [31:0] i_display_value,  // Input for the variable value you want to display
    output wire UART_TXD
);

    // Constants and Definitions
    `define RST_REG     3'd0
    `define LD_INIT_STR 3'd1
    `define SEND_CHAR   3'd2
    `define RDY_LOW     3'd3
    `define WAIT_RDY    3'd4

    parameter RESET_CNTR_MAX = 18'b110000110101000000;  // 200,000 clock cycles

    // State machine and other control logic
    reg [2:0] uartState = `RST_REG;
    reg [7:0] sendStr [0:31];    // Buffer for strings, extended for longer numbers
    reg [7:0] strIndex;          // Index into sendStr
    reg [7:0] strEnd;            // End of string index
    reg [17:0] reset_cntr;
    wire uartRdy;                // Ready signal from UART_TX_CTRL
    reg uartSend = 0;            // Send control signal
    reg [7:0] uartData;          // Data being sent
    wire uartTX;                 // UART TX line

    // Reset counter logic
    always @(posedge i_top_clk) begin
        if ((reset_cntr == RESET_CNTR_MAX) || (uartState != `RST_REG))
            reset_cntr <= 0;
        else
            reset_cntr <= reset_cntr + 1;
    end

    // UART state machine logic
    always @(posedge i_top_clk) begin
        case (uartState)
            `RST_REG:
                if (reset_cntr == RESET_CNTR_MAX)
                    uartState <= `LD_INIT_STR;
            `LD_INIT_STR: begin
                // Convert i_display_value to ASCII and load into sendStr
                sendStr[0]  <= (i_display_value[31:28] < 10 ? i_display_value[31:28] + 8'h30 : i_display_value[31:28] + 8'h37);
                sendStr[1]  <= (i_display_value[27:24] < 10 ? i_display_value[27:24] + 8'h30 : i_display_value[27:24] + 8'h37);
                sendStr[2]  <= (i_display_value[23:20] < 10 ? i_display_value[23:20] + 8'h30 : i_display_value[23:20] + 8'h37);
                sendStr[3]  <= (i_display_value[19:16] < 10 ? i_display_value[19:16] + 8'h30 : i_display_value[19:16] + 8'h37);
                sendStr[4]  <= (i_display_value[15:12] < 10 ? i_display_value[15:12] + 8'h30 : i_display_value[15:12] + 8'h37);
                sendStr[5]  <= (i_display_value[11:8]  < 10 ? i_display_value[11:8]  + 8'h30 : i_display_value[11:8]  + 8'h37);
                sendStr[6]  <= (i_display_value[7:4]   < 10 ? i_display_value[7:4]   + 8'h30 : i_display_value[7:4]   + 8'h37);
                sendStr[7]  <= (i_display_value[3:0]   < 10 ? i_display_value[3:0]   + 8'h30 : i_display_value[3:0]   + 8'h37);
                sendStr[8]  <= 8'h0A;  // '\n'
                sendStr[9]  <= 8'h0D;  // '\r'
                strEnd <= 10;
                uartState <= `SEND_CHAR;
            end
            `SEND_CHAR:
                uartState <= `RDY_LOW;
            `RDY_LOW:
                uartState <= `WAIT_RDY;
            `WAIT_RDY:
                if (uartRdy == 1'b1) begin
                    if (strEnd == strIndex)
                        uartState <= `LD_INIT_STR;  // Reset to start or handle other states
                    else
                        uartState <= `SEND_CHAR;
                end
            default:  // should never be reached
                uartState <= `RST_REG;
        endcase
    end

    // Character counting and sending logic
    always @(posedge i_top_clk) begin
        if (uartState == `LD_INIT_STR)
            strIndex <= 0;
        else if (uartState == `SEND_CHAR)
            strIndex <= strIndex + 1;
    end

    // UART_TX_CTRL interface logic
    always @(posedge i_top_clk) begin
        if (uartState == `SEND_CHAR) begin
            uartSend <= 1'b1;
            uartData <= sendStr[strIndex];
        end else
            uartSend <= 1'b0;
    end

    // Component instantiation and signal mapping
    UART_TX_CTRL Inst_UART_TX_CTRL (
        .SEND(uartSend),
        .DATA(uartData),
        .CLK(i_top_clk),
        .READY(uartRdy),
        .UART_TX(uartTX)
    );

    assign UART_TXD = uartTX;

endmodule
