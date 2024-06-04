`timescale 1ns / 1ps
`default_nettype none

module vga_ctrl(
    input wire clk25,
    input wire rstn_clk25,
    
    // VGA driver signals
    output wire [10:0] vga_x,
    output wire [10:0] vga_y, 
    output wire vga_vsync,
    output wire vga_hsync, 
    output wire vga_video,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b, 
    
    // VGA read from BRAM 
    input wire [11:0] pix_data, 
    output wire [18:0] pix_addr  // Corrected to match the signal name in top module
);
    
    vga_driver #(
        .hDisp(640), 
        .hFp(16), 
        .hPulse(96), 
        .hBp(48), 
        .vDisp(480), 
        .vFp(10), 
        .vPulse(2),
        .vBp(33)
    ) vga_timing (
        .clk(clk25),
        .rstn(rstn_clk25),
        
        // VGA timing signals
        .x_counter(vga_x),
        .y_counter(vga_y),
        .video(vga_video), 
        .vsync(vga_vsync),
        .hsync(vga_hsync)
    );
    
    reg [3:0] r_vga_r;
    reg [3:0] r_vga_g; 
    reg [3:0] r_vga_b;
    
    // Scaling 320x240 to 640x480
    wire [9:0] scaled_x = vga_x >> 1; // Divide by 2
    wire [9:0] scaled_y = vga_y >> 1; // Divide by 2
    assign pix_addr = scaled_y * 320 + scaled_x;
    
    // Valid Video selects between a black RGB Pixel and BRAM pixel data 
    always @(*) begin
        if (vga_video) begin
            r_vga_r = pix_data[11:8]; 
            r_vga_g = pix_data[7:4];
            r_vga_b = pix_data[3:0];
        end else begin
            r_vga_r = 0; 
            r_vga_g = 0;
            r_vga_b = 0;
        end
    end 
    
    assign vga_r = r_vga_r;
    assign vga_g = r_vga_g;
    assign vga_b = r_vga_b;
endmodule
