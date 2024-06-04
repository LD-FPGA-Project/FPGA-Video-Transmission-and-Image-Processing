`timescale 1ns / 1ps
`default_nettype none

module bram_mem
#(parameter WIDTH = 11, parameter DEPTH = 320*240)
(
    input wire wclk,
    input wire wr,
    input wire [$clog2(DEPTH)-1:0] wr_addr,
    
    input wire rclk,
    input wire rd,
    input wire [$clog2(DEPTH)-1:0] rd_addr,
    
    input wire en,
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out      
);

// Infer dual-port BRAM with dual clocks
// https://docs.xilinx.com/v/u/2019.2-English/ug901-vivado-synthesis (page 126)
reg [WIDTH-1:0] ram [0:DEPTH-1]; 

always @(posedge wclk)
if (en)
    if (wr)
        ram[wr_addr] <= data_in;

always @(posedge rclk)
if (rd)
    data_out <= ram[rd_addr]; 

endmodule
