`timescale 1ns / 1ps
`default_nettype none 

module top_vga
    (
        input wire i_clk25m,
        input wire i_rstn_clk25m,
        output wire [3:0] o_VGA_red,
        output wire [3:0] o_VGA_green,
        output wire [3:0] o_VGA_blue,
        output wire o_VGA_vsync,
        output wire o_VGA_hsync
    );

    // Assuming 640x480 resolution parameters
    wire [9:0] x;
    wire [9:0] y;
    wire video_valid;

    vga_driver #(640, 16, 96, 48, 480, 10, 2, 33) vga_gen
    (
        .i_clk(i_clk25m),
        .i_rstn(i_rstn_clk25m),
        .o_x_counter(x),
        .o_y_counter(y),
        .o_video(video_valid),
        .o_vsync(o_VGA_vsync),
        .o_hsync(o_VGA_hsync)
    );

    // Output blue color when in valid video area
    assign o_VGA_red   = video_valid ? 4'h0 : 4'h0;
    assign o_VGA_green = video_valid ? 4'h0 : 4'h0;
    assign o_VGA_blue  = video_valid ? 4'hF : 4'h0;
endmodule
