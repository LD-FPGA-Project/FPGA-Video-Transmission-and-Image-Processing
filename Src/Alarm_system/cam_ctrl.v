`timescale 1ns / 1ps
`default_nettype none

module cam_ctrl
#(parameter CONFIG_CLK = 100_000_000)
(
    input wire clk,
    input wire rstn_clk,
    input wire rstn_pclk, 
   
    // Start/Done signals for cam init      
    input wire cam_start,
    output wire cam_done,
    
    // I/O camera
    input wire pclk, 
    input wire [7:0] pix_byte, 
    input wire vsync,
    input wire href,
    output wire reset,     
    output wire pwdn,       
    output wire siod,
    output wire sioc,
    
    // Outputs to BRAM
    output wire pix_wr, 
    output wire [11:0] pix_data,
    output wire [18:0] pix_addr
);

    assign reset = 1; // 0: reset registers   1: normal mode
    assign pwdn = 0;  // 0: normal mode       1: power down mode
       
    wire start_db;
        
    debouncer #(.DELAY(240_000)) cam_start_db (
        .clk(clk), 
        .btn_in(cam_start),
        .btn_db(start_db)
    );
    
    init_camera #(.CLK_F(CONFIG_CLK), .SCCB_F(400_000)) cam_config (
        .clk(clk),
        .rstn(rstn_clk),
        .cam_init_start(start_db),
        .cam_init_done(cam_done),
        .siod(siod),
        .sioc(sioc),
        .data_sent_done(),
        .SCCB_dout()
    );
    
    cam_capture capture (
        .pclk(pclk),
        .vsync(vsync),
        .href(href),
        .cam_done(cam_done),
        .D(pix_byte),
        .pix_addr(pix_addr),
        .wr(pix_wr),
        .pix_data(pix_data)
    );
      
endmodule
