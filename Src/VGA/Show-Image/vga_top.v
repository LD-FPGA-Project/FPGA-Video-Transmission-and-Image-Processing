`timescale 1ns / 1ps
`default_nettype none

module vga_top
(
    input wire          i_clk25m,
    input wire          i_rstn_clk25m,
    input wire [11:0]   i_pixel_data,  
    
    output wire [9:0]   o_VGA_x,
    output wire [9:0]   o_VGA_y,
    output wire         o_VGA_vsync,
    output wire         o_VGA_hsync,
    output wire         o_VGA_video,
    output wire [3:0]   o_VGA_red,
    output wire [3:0]   o_VGA_green,
    output wire [3:0]   o_VGA_blue
);

 
    vga_driver vga_gen
    (
        .i_clk(i_clk25m),
        .i_rstn(i_rstn_clk25m),
        .o_x_counter(o_VGA_x),
        .o_y_counter(o_VGA_y),
        .o_video(o_VGA_video),
        .o_hsync(o_VGA_hsync),
        .o_vsync(o_VGA_vsync)
    );

    assign o_VGA_red   = o_VGA_video ? i_pixel_data[11:8] : 4'h0;
    assign o_VGA_green = o_VGA_video ? i_pixel_data[7:4] : 4'h0;
    assign o_VGA_blue  = o_VGA_video ? i_pixel_data[3:0] : 4'h0;

endmodule
