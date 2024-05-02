module tx_top (
    input wire i_top_clk,
    input wire i_top_rst,
    input wire [11:0] i_bram_pix_data,
    input wire [18:0] i_bram_pix_addr,
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
    reg [7:0] sendStr [0:18];    // Buffer for strings
    reg [7:0] strIndex;          // Index into sendStr
    reg [7:0] strEnd;            // End of string index
    reg [17:0] reset_cntr;
    wire uartRdy;                // Ready signal from UART_TX_CTRL
    reg uartSend = 0;            // Send control signal
    reg [7:0] uartData;          // Data being sent
    wire uartTX;                 // UART TX line
    wire bramEmpty;              // Bram empty signal

    // Bram empty signal generation
    assign bramEmpty = (i_bram_pix_data == 12'd0) && (i_bram_pix_addr == 19'd0);

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
        `LD_INIT_STR:
          uartState <= `SEND_CHAR;
        `SEND_CHAR:
          uartState <= `RDY_LOW;
        `RDY_LOW:
          uartState <= `WAIT_RDY;
        `WAIT_RDY:
          if (uartRdy == 1'b1) begin
            if (strEnd == strIndex) begin
              if (bramEmpty) begin
                // Manually load the string "Bram is empty"
                sendStr[0] <= 8'h42; // 'B'
                sendStr[1] <= 8'h72; // 'r'
                sendStr[2] <= 8'h61; // 'a'
                sendStr[3] <= 8'h6D; // 'm'
                sendStr[4] <= 8'h20; // ' '
                sendStr[5] <= 8'h69; // 'i'
                sendStr[6] <= 8'h73; // 's'
                sendStr[7] <= 8'h20; // ' '
                sendStr[8] <= 8'h65; // 'e'
                sendStr[9] <= 8'h6D; // 'm'
                sendStr[10] <= 8'h70; // 'p'
                sendStr[11] <= 8'h74; // 't'
                sendStr[12] <= 8'h79; // 'y'
                sendStr[13] <= 8'h0A; // '\n'
                sendStr[14] <= 8'h0D; // '\r'
                strEnd <= 15;
              end
              uartState <= `LD_INIT_STR;  // Reset to start or handle other states
            end else
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