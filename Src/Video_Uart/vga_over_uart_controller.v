`timescale 1ns / 1ps

module controller(
    input wire clk,
    input wire rx,
    input wire start_grayscale,
    input wire start_inverse,
    output wire rx_busy,
    output wire h_sync,
    output wire v_sync,
    output wire [3:0] RED_out,
    output wire [3:0] GREEN_out,
    output wire [3:0] BLUE_out
);

    // States for the UART receiving FSM
    localparam HIGH_BYTE = 0;
    localparam LOW_BYTE = 1;

    // Resolution of received image
    localparam DISPLAY_X = 11'd320;
    localparam DISPLAY_Y = 11'd240;

    // VGA positions locations
    wire [10:0] x_loc;
    wire [10:0] y_loc;
    wire video_active;
    reg show_second_image;

    // UART related wiring and regs
    reg flush, allow_next;
    reg state;
    wire [7:0] rx_data;
    reg [5:0] rx_data_buffer1;
    wire rx_converted, rx_data_valid;

    // Block RAM related variables
    reg [10:0] bram_write_data;
    wire [10:0] bram_read_data;
    reg [17:0] bram_write_addr, bram_read_addr;
    reg bram_wea;

    // Timing related stuff
    wire clk_vga;
    reg clk_uart;
    reg [2:0] counter;
    wire locked;
    reg reset;

    // Generate 108MHz for VGA
    clk_wiz_0 clock_synthesis (
      // Clock out ports
      .clk_vga(clk_vga),     // output clk_vga
      // Status and control signals
      .reset(reset),         // input reset
      .locked(locked),       // output locked

      // Clock in ports
      .clk_in1(clk)
    );

    blk_mem_gen_0 data_buffer (
      // Port A, used to buffer data from UART
      .clka(clk_uart),       // input wire clka
      .wea(bram_wea),        // input wire [0 : 0] wea
      .addra(bram_write_addr), // input wire [17 : 0] addra
      .dina(bram_write_data),  // input wire [11 : 0] dina

      // Port B, used to read data by VGA
      .clkb(clk_vga),        // input wire clkb
      .addrb(bram_read_addr), // input wire [17 : 0] addrb
      .doutb(bram_read_data)  // output wire [11 : 0] doutb
    );

    vga_top vga_module (
        .i_clk25m(clk_vga),         // Use the 108 MHz clock
        .i_rstn_clk25m(~reset),     // Active-low reset
        .i_pixel_data(pixel),
        .o_VGA_x(x_loc),
        .o_VGA_y(y_loc),
        .o_VGA_vsync(v_sync),
        .o_VGA_hsync(h_sync),
        .o_VGA_video(video_active),
        .o_VGA_red(RED_out),
        .o_VGA_green(GREEN_out),
        .o_VGA_blue(BLUE_out)
    );

    uart_rx #(
        .FRAME_BITS(8),
        .PARITY_BIT(2),
        .STOP_BITS(1),
        .OVERSAMPLE_FACTOR(13)
    ) input_uart_data_1843200 (
        .rx(rx),
        .i_clk(clk_uart),
        .flush(flush),
        .data(rx_data),
        .converted(rx_converted),
        .data_valid(rx_data_valid),
        .busy(rx_busy)
    );

    gray_scale grayscale_inst(
        .clk(clk_vga),
        .pixel_data(bram_read_data),
        .data_out(pixel_data_grayscale)
    );

    invert_colors invert_inst(
        .clk(clk_vga),
        .pixel_data(bram_read_data),
        .data_out(pixel_data_invert)
    );

    wire [11:0] pixel_data_grayscale;
    wire [11:0] pixel_data_invert;
    reg [11:0] pixel;

    initial begin
        counter = 0;
        reset = 0;
        flush = 0;
        allow_next = 0;
        rx_data_buffer1 = 0;

        show_second_image = 0;

        bram_wea = 0;
        bram_write_addr = 0;
        bram_read_addr = 0;
        bram_write_data = 0;
    end

    // Manually divide the clock by 4 for UART
    always @(posedge clk) begin
        counter <= counter + 1;

        if(counter == 3'd1) begin
            counter <= 0;
            clk_uart <= ~clk_uart;
        end
    end

    // Logic for receiving and storing data
    always @(posedge clk_uart) begin
        case(state)
            HIGH_BYTE: begin
                if(~rx_converted && ~flush)
                    allow_next <= 1;

                if(rx_converted && ~flush && allow_next) begin
                    allow_next <= 0;
                    flush <= 1;
                    state <= LOW_BYTE;
                    rx_data_buffer1 <= rx_data[6:1];
                    bram_wea <= 0;
                    bram_write_addr <= (bram_write_addr == DISPLAY_X*DISPLAY_Y*2-1) ? 0 : bram_write_addr + 1;
                end else begin
                    flush <= 0;
                end
            end
            LOW_BYTE: begin
                if(~rx_converted && ~flush)
                    allow_next <= 1;

                if(rx_converted && ~flush && allow_next) begin
                    allow_next <= 0;
                    flush <= 1;
                    state <= HIGH_BYTE;
                    bram_write_data <= {
                        rx_data[6:3],
                        rx_data[2:1],
                        rx_data_buffer1[5],
                        rx_data_buffer1[3:0]
                    };
                    bram_wea <= 1;
                end else
                    flush <= 0;
            end
        endcase

        if(bram_write_addr == DISPLAY_X*DISPLAY_Y-1)
            show_second_image <= 0;
        else if(bram_write_addr == DISPLAY_X*DISPLAY_Y*2-1)
            show_second_image <= 1;
    end

    // Update the pixel data based on the selected mode
    always @(posedge clk_vga) begin
        if(video_active) begin
            if(show_second_image)
                bram_read_addr <= DISPLAY_X*DISPLAY_Y + y_loc[10:1] + x_loc[10:1]*DISPLAY_Y;
            else
                bram_read_addr <= y_loc[10:1] + x_loc[10:1]*DISPLAY_Y;

            if (start_grayscale) begin
                pixel <= pixel_data_grayscale;
            end else if (start_inverse) begin
                pixel <= pixel_data_invert;
            end else begin
                pixel <= bram_read_data;
            end
        end
    end

endmodule
