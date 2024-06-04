`timescale 1ns / 1ps
`default_nettype none

module top(
    input wire clk,
    input wire rst,
    input wire gray_start, 
    input wire inv_start, 
    
    input wire cam_start, 
    output wire cam_done,
    
    input wire send_button,  // Button to trigger sending BRAM contents via UART
    
    // I/O to camera
    input wire pclk, 
    input wire [7:0] pix_byte,
    input wire vsync,
    input wire href,
    output wire reset,
    output wire pwdn,
    output wire xclk,
    output wire siod,
    output wire sioc,
    
    // I/O to VGA 
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b,
    output wire vga_vsync,
    output wire vga_hsync,

    // UART
    input wire rx,
    output wire tx,
    output wire rx_busy
);

    // Connect CameraMod/VgaMod modules to BRAM
    wire [11:0] bram_wr_data, bram_rd_data;
    reg [18:0] bram_wr_addr, bram_rd_addr; 
    reg [11:0] pixel;
    wire [11:0] gray_data;
    wire [11:0] inv_data;
    wire bram_wr;
    wire [18:0] vga_rd_addr;  // Signal to be assigned to bram_rd_addr internally
           
    // Reset synchronizers for all clock domains
    reg rst_sync1, rst_sync2;
    reg pclk_rst_sync1, pclk_rst_sync2;
    reg clk25_rst_sync1, clk25_rst_sync2; 
        
    wire clk25; 
    
    // Generate clocks for camera and VGA
    clk_wiz_0 clk_gen (
        .clk_in1(clk),
        .clk_out1(clk25),
        .clk_out2(xclk)
    );
    
    wire rst_db; 
    
    // Debounce reset button - invert reset to have debounced negedge reset
    localparam DELAY_DB = 240_000; //240_000 when uploading to hardware, 10 when simulating in testbench 
    debouncer #(.DELAY(DELAY_DB)) rst_debounce (
        .clk(clk),
        .btn_in(~rst),
        .btn_db(rst_db)
    ); 
    
    // Double FF for negedge reset synchronization 
    always @(posedge clk or negedge rst_db) begin
        if (!rst_db) {rst_sync2, rst_sync1} <= 0; 
        else {rst_sync2, rst_sync1} <= {rst_sync1, 1'b1}; 
    end 

    always @(posedge clk25 or negedge rst_db) begin
        if (!rst_db) {clk25_rst_sync2, clk25_rst_sync1} <= 0; 
        else {clk25_rst_sync2, clk25_rst_sync1} <= {clk25_rst_sync1, 1'b1}; 
    end

    always @(posedge pclk or negedge rst_db) begin
        if (!rst_db) {pclk_rst_sync2, pclk_rst_sync1} <= 0; 
        else {pclk_rst_sync2, pclk_rst_sync1} <= {pclk_rst_sync1, 1'b1}; 
    end 
    
    // FPGA-camera interface
    wire [18:0] pix_addr;
    cam_ctrl #(.CONFIG_CLK(100_000_000)) cam_inst (
        .clk(clk),
        .rstn_clk(rst_sync2),
        .rstn_pclk(pclk_rst_sync2),
        
        // I/O for camera init
        .cam_start(cam_start),
        .cam_done(cam_done), 
        
        // I/O camera
        .pclk(pclk),
        .pix_byte(pix_byte), 
        .vsync(vsync), 
        .href(href),
        .reset(reset),
        .pwdn(pwdn),
        .siod(siod),
        .sioc(sioc), 
        
        // Outputs to BRAM
        .pix_wr(bram_wr),
        .pix_data(bram_wr_data),
        .pix_addr(pix_addr)
    );
    
    // Manage BRAM write address internally
    always @(posedge pclk or negedge rst_db) begin
        if (!rst_db) begin
            bram_wr_addr <= 0;
        end else if (bram_wr) begin
            bram_wr_addr <= pix_addr;
        end
    end
    
    // BRAM Instance
    bram_mem #(.WIDTH(12), .DEPTH(320*240)) pixel_mem (
        // BRAM Write signals (cam_inst)
        .wclk(pclk),
        .wr(bram_wr), 
        .wr_addr(bram_wr_addr),
        .data_in(bram_wr_data),
        .en(1'b1),
         
        // BRAM Read signals (vga_inst and tx)
        .rclk(clk25),
        .rd(1'b1),
        .rd_addr(bram_rd_addr), 
        .data_out(bram_rd_data)
    );
    
    // Grayscale and Invert Modules
    gray_scale gray_inst(.clk(clk25), .pixel_data(bram_rd_data), .data_out(gray_data));
    invert_colors inv_inst(.clk(clk25), .pixel_data(bram_rd_data), .data_out(inv_data));
    
    // VGA Display Logic
    always @(posedge clk25) begin
        pixel <= bram_rd_data;
        if (gray_start) begin
            pixel <= gray_data; 
        end
        if (inv_start) begin
            pixel <= inv_data;
        end
    end
    
    vga_ctrl display_inst (
        .clk25(clk25),
        .rstn_clk25(clk25_rst_sync2), 
        
        // VGA timing signals
        .vga_vsync(vga_vsync),
        .vga_hsync(vga_hsync), 
        .vga_video(), // This is unused
        
        // VGA RGB Pixel Data
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b), 
        
        // VGA read/write from/to BRAM
        .pix_data(pixel), 
        .pix_addr(vga_rd_addr)  // Pass signal to vga_ctrl
    );

    // UART Signals
    wire [7:0] rx_data;
    wire rx_converted, rx_data_valid, tx_busy;
    reg flush, start_tx;

    reg [18:0] tx_bram_addr;
    reg [7:0] tx_data;
    reg tx_active;
    reg tx_trigger;

    // Edge detection for send_button
    reg send_button_prev;
    wire send_button_edge = send_button && !send_button_prev;

    always @(posedge clk25) begin
        send_button_prev <= send_button;
    end

    // UART RX Instance
    uart_rx #(
        .FRAME_BITS(8),
        .PARITY_BIT(2),
        .STOP_BITS(1),
        .OVERSAMPLE_FACTOR(13)
    ) uart_rx_inst (
        .rx(rx),
        .i_clk(clk25),
        .flush(flush),
        .data(rx_data),
        .converted(rx_converted),
        .data_valid(rx_data_valid),
        .busy(rx_busy)
    );

    // UART TX Instance
    uart_tx #(
        .FRAME_BITS(8),
        .PARITY_BIT(2),
        .STOP_BITS(1),
        .OVERSAMPLE_FACTOR(13)
    ) uart_tx_inst (
        .tx_data(tx_data),
        .i_clk(clk25),
        .start_tx(start_tx),
        .tx(tx),
        .tx_busy(tx_busy)
    );

    // Logic to manage the UART echo and BRAM transmission functionality
    always @(posedge clk25 or negedge rst_db) begin
        if (!rst_db) begin
            flush <= 0;
            start_tx <= 0;
            tx_active <= 0;
            tx_bram_addr <= 0;
            tx_trigger <= 0;
        end else begin
            if (rx_converted && !flush && !tx_busy && !tx_active) begin
                flush <= 1;
                start_tx <= 1;
                tx_data <= rx_data;  // Echo received data
            end else if (tx_active && !tx_busy) begin
                start_tx <= 1;
                tx_data <= bram_rd_data[7:0]; // Send lower byte of BRAM data
                tx_bram_addr <= tx_bram_addr + 1;
                if (tx_bram_addr == (320*240)-1) begin
                    tx_active <= 0;  // Transmission complete
                end
            end else begin
                flush <= 0;
                start_tx <= 0;
            end

            if (send_button_edge && !tx_active) begin
                tx_active <= 1;
                tx_bram_addr <= 0;
            end
        end
    end

    // BRAM read address management for VGA and UART transmission
    always @(posedge clk25) begin
        if (tx_active) begin
            bram_rd_addr <= tx_bram_addr;
        end else begin
            bram_rd_addr <= vga_rd_addr;
        end
    end

endmodule
