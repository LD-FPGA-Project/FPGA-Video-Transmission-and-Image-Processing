`timescale 1ns / 1ps
`default_nettype none

module vga_top
    (   input wire          i_clk25m,
        input wire          i_rstn_clk25m,
        
        output wire [9:0]   o_VGA_x,
        output wire [9:0]   o_VGA_y, 
        output wire         o_VGA_vsync,
        output wire         o_VGA_hsync, 
        output wire         o_VGA_video,
        output wire [3:0]   o_VGA_red,
        output wire [3:0]   o_VGA_green,
        output wire [3:0]   o_VGA_blue
    );

    // VGA driver instantiation with timing configurations
    vga_driver
    #(  .hDisp(640), 
        .hFp(16), 
        .hPulse(96), 
        .hBp(48), 
        .vDisp(480), 
        .vFp(10), 
        .vPulse(2),
        .vBp(33)
    ) vga_timing_signals (
        .i_clk(i_clk25m),
        .i_rstn(i_rstn_clk25m),
        
        .o_x_counter(o_VGA_x),
        .o_y_counter(o_VGA_y),
        .o_video(o_VGA_video), 
        .o_vsync(o_VGA_vsync),
        .o_hsync(o_VGA_hsync)
    );
    
    // Assign constant values for a blue screen during active video
    assign o_VGA_red   = o_VGA_video ? 4'h0 : 4'h0;
    assign o_VGA_green = o_VGA_video ? 4'h0 : 4'h0;
    assign o_VGA_blue  = o_VGA_video ? 4'hF : 4'h0;

endmodule
