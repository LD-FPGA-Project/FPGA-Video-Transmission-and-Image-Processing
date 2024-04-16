`timescale 1ns / 1ps
`default_nettype none

module top
    (
        input wire i_top_clk,
        
        // I/O to VGA 
        output wire [3:0] o_top_vga_red,
        output wire [3:0] o_top_vga_green,
        output wire [3:0] o_top_vga_blue,
        output wire o_top_vga_vsync,
        output wire o_top_vga_hsync
    );

    wire w_clk25m; 
    wire w_rstn_clk25m; 
    
    // Generate a 25 MHz clock for VGA
    clk_wiz_1 clock_gen
    (
        .clk_in1(i_top_clk),
        .clk_out1(w_clk25m),
        .reset(w_rstn_clk25m)
    );
    
    // Instantiate the vga_top with modification to always output blue
    top_vga vga_interface
    (
        .i_clk25m(w_clk25m),
        .i_rstn_clk25m(w_rstn_clk25m),
        .o_VGA_red(o_top_vga_red),
        .o_VGA_green(o_top_vga_green),
        .o_VGA_blue(o_top_vga_blue),
        .o_VGA_vsync(o_top_vga_vsync),
        .o_VGA_hsync(o_top_vga_hsync)
    );
endmodule