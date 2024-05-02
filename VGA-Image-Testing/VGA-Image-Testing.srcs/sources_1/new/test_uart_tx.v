module GPIO_demo(
    input wire clk,
    input wire rst,
    input wire [15:0] sw,
    output reg [15:0] led,
    output wire uart_txd
);

reg [7:0] uart_data = 8'h00;
reg uart_send = 0;
wire uart_ready;

// String to send
localparam STRING_LEN = 11;
reg [7:0] message[0:STRING_LEN-1] = {
    8'h48, 8'h65, 8'h6C, 8'h6C, 8'h6F, 
    8'h2C, 8'h20, 8'h46, 8'h50, 8'h47, 
    8'h41
};

integer i = 0;

// Instantiate UART transmitter
UART_TX_CTRL uart_controller(
    .clk(clk),
    .rst(rst),
    .send(uart_send),
    .data(uart_data),
    .ready(uart_ready),
    .uart_txd(uart_txd)
);

// FSM to control message sending
always @(posedge clk or posedge rst) begin
    if (rst) begin
        i <= 0;
        uart_send <= 0;
        led <= 0;
    end else begin
        led <= sw;  // Directly map switches to LEDs
        
        if (uart_ready && i < STRING_LEN) begin
            uart_data <= message[i];
            uart_send <= 1;
            i <= i + 1;
        end else begin
            uart_send <= 0;
        end
    end
end

endmodule
