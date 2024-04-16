`timescale 1ns / 1ps

module cam_top(
    input wire clk,
    input wire rst,
    output wire scl,
    inout wire sda
);

wire sccb_start;
wire [7:0] sccb_addr;
wire [7:0] sccb_data;
wire sccb_done;

sccb_master sccb_ctrl(
    .clk(clk),
    .rst(rst),
    .start(sccb_start),
    .addr(sccb_addr),
    .data(sccb_data),
    .scl(scl),
    .sda(sda)
);

ov7670_config camera_config(
    .clk(clk),
    .rst(rst),
    .sccb_start(sccb_start),
    .sccb_addr(sccb_addr),
    .sccb_data(sccb_data),
    .sccb_done(sccb_done)
);

endmodule