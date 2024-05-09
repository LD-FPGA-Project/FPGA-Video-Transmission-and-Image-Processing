`timescale 1ns / 1ps
`default_nettype none

module top (
    input wire i_top_clk,
    input wire i_top_rst,
    
    input wire i_top_cam_start, 
    output wire o_top_cam_done,
    input wire switch_reverse,
    input wire start_grayscale, 
    input wire start_inverse, 
    
    input wire i_top_pclk, 
    input wire [7:0] i_top_pix_byte,
    input wire i_top_pix_vsync,
    input wire i_top_pix_href,
    output wire o_top_reset,
    output wire o_top_pwdn,
    output wire o_top_xclk,
    output wire o_top_siod,
    output wire o_top_sioc,
    
    output wire [3:0] o_top_vga_red,
    output wire [3:0] o_top_vga_green,
    output wire [3:0] o_top_vga_blue,
    output wire o_top_vga_vsync,
    output wire o_top_vga_hsync,
    
       output wire UART_TXD  
);

    wire [11:0] i_bram_pix_data, o_bram_pix_data;
    wire [18:0] i_bram_pix_addr, o_bram_pix_addr; 
    wire i_bram_pix_wr;
   
 
    reg r1_rstn_top_clk, r2_rstn_top_clk;
    reg r1_rstn_pclk, r2_rstn_pclk;
    
  
    wire w_clk25m; 
    clk_wiz_0 clock_gen (
        .clk_in1(i_top_clk),
        .clk_out1(w_clk25m),
        .clk_out2(o_top_xclk)
    );

   
    wire w_rst_btn_db; 
    wire w_rst_btn_gr;
    reg r1_rstn_clk25m, r2_rstn_clk25m; 

    debouncer #(.DELAY(240_000)) top_btn_db (
        .i_clk(i_top_clk), 
        .i_btn_in(~i_top_rst), 
        .o_btn_db(w_rst_btn_db)
    );
   
    always @(posedge i_top_clk or negedge w_rst_btn_db) begin
        if(!w_rst_btn_db) begin
            {r2_rstn_top_clk, r1_rstn_top_clk} <= 0; 
        end else begin
            {r2_rstn_top_clk, r1_rstn_top_clk} <= {r1_rstn_top_clk, 1'b1}; 
        end
    end 
    
    always @(posedge w_clk25m or negedge w_rst_btn_db) begin
        if(!w_rst_btn_db) begin
            {r2_rstn_clk25m, r1_rstn_clk25m} <= 0; 
        end else begin
            {r2_rstn_clk25m, r1_rstn_clk25m} <= {r1_rstn_clk25m, 1'b1}; 
        end
    end
    
    always @(posedge i_top_pclk or negedge w_rst_btn_db) begin
        if(!w_rst_btn_db) begin
            {r2_rstn_pclk, r1_rstn_pclk} <= 0; 
        end else begin
            {r2_rstn_pclk, r1_rstn_pclk} <= {r1_rstn_pclk, 1'b1}; 
        end
    end  
    
  
    cam_top OV7670_cam (
        .i_clk(i_top_clk),
        .i_rstn_clk(r2_rstn_top_clk),
        .i_rstn_pclk(r2_rstn_pclk),
        .i_cam_start(i_top_cam_start),
        .o_cam_done(o_top_cam_done), 
        .i_pclk(i_top_pclk),
        .i_pix_byte(i_top_pix_byte), 
        .i_vsync(i_top_pix_vsync), 
        .i_href(i_top_pix_href),
        .o_reset(o_top_reset),
        .o_pwdn(o_top_pwdn),
        .o_siod(o_top_siod),
        .o_sioc(o_top_sioc),
        .o_pix_wr(), 
        .o_pix_data(i_bram_pix_data),
        .o_pix_addr(i_bram_pix_addr)
    );
    
  
    mem_bram #(
        .WIDTH(12),
        .DEPTH(320*240)
    ) pixel_memory (
        
        .i_wclk(i_top_pclk),
        .i_wr(1'b1),
        .i_wr_addr(i_bram_pix_addr),
        .i_bram_data(i_bram_pix_data),
        .i_bram_en(1'b1),
       
        .i_rclk(w_clk25m),
        .i_rd(1'b1),
        .i_rd_addr(o_bram_pix_addr), 
        .o_bram_data(o_bram_pix_data)
    );
     
    wire X; 
    wire Y;

    vga_top display_interface (
        .i_clk25m(w_clk25m),
        .i_rstn_clk25m(r2_rstn_clk25m),
        .i_pixel_data(o_bram_pix_data),
        .o_VGA_red(o_top_vga_red),
        .o_VGA_green(o_top_vga_green),
        .o_VGA_blue(o_top_vga_blue),
        .o_VGA_vsync(o_top_vga_vsync),
        .o_VGA_hsync(o_top_vga_hsync),
        .o_VGA_x(X), 
        .o_VGA_y(Y),
        .o_VGA_video()
    );
    
     tx_top TX_TOP_inst (
        .i_top_clk(i_top_clk),
        .i_top_rst(i_top_rst),
        .i_display_value(i_bram_pix_data),
        .UART_TXD(UART_TXD)
    );


endmodule
