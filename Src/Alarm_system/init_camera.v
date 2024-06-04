`timescale 1ns / 1ps
`default_nettype none

module init_camera
#(parameter CLK_F = 100_000_000, parameter SCCB_F = 400_000)
(
    input wire clk,
    input wire rstn,
    input wire cam_init_start,
    output wire siod,
    output wire sioc,
    output wire cam_init_done,        
    
    // Signal used only for testbench
    output wire data_sent_done,
    output wire [7:0] SCCB_dout
);

    wire [7:0] rom_addr;
    wire [15:0] rom_data;    
    wire [7:0] send_addr, send_data;  
    wire start_sccb, ready_sccb; 
    
    cam_rom cam_rom (
        .clk(clk),
        .rstn(rstn), 
        .addr(rom_addr),
        .dout(rom_data)
    );
    
    cam_config #(.CLK_F(CLK_F)) cam_cfg (
        .clk(clk),
        .rstn(rstn),
        .i2c_ready(ready_sccb),
        .config_start(cam_init_start),
        .rom_data(rom_data),
        .rom_addr(rom_addr),
        .i2c_start(start_sccb),
        .i2c_addr(send_addr),
        .i2c_data(send_data),
        .config_done(cam_init_done)
    );
      
    sccb_master #(.CLK_F(CLK_F), .SCCB_F(SCCB_F)) sccb (
        .clk(clk),
        .rstn(rstn),
        .read(1'b0),      
        .write(1'b1),
        .start(start_sccb),
        .restart(1'b0),
        .stop(1'b0),
        .ready(ready_sccb),
        .din(send_data),
        .addr(send_addr), 
        .dout(SCCB_dout),      
        .done(data_sent_done),        
        .ack(),       
        .sda(siod),      
        .scl(sioc)
    );

endmodule
