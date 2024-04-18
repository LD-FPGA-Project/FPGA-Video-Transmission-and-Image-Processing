`timescale 1ns / 1ps
`default_nettype none

module tb_vga_driver;
    parameter hDisp  = 320; 
    parameter hFp    = 16;
    parameter hPulse = 48;
    parameter hBp    = 32;   
    parameter vDisp  = 240;
    parameter vFp    = 10;   
    parameter vPulse = 2;
    parameter vBp    = 33;

    reg clk;
    reg rstn;

  
    wire [9:0] x_counter;
    wire [9:0] y_counter;
    wire video;
    wire hsync;
    wire vsync;

   
    vga_driver #(
        .hDisp(hDisp), 
        .hFp(hFp),
        .hPulse(hPulse),
        .hBp(hBp),   
        .vDisp(vDisp),
        .vFp(vFp),   
        .vPulse(vPulse),
        .vBp(vBp)
    ) uut (
        .i_clk(clk),
        .i_rstn(rstn),
        .o_x_counter(x_counter),
        .o_y_counter(y_counter),
        .o_video(video),
        .o_hsync(hsync),
        .o_vsync(vsync)
    );

   
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

   
    initial begin

        rstn = 0;
        #100;       
        rstn = 1;
        #100;

   
        #100000;    
        $finish;
    end


endmodule
