`timescale 1ns / 1ps
`default_nettype none

module image_bram
(
    input wire [16:0] addr,         
    input wire clk,                  
    output reg [11:0] data_out      );

    reg [11:0] bram[0:76799]; 
    
    initial begin
        $readmemh("image_data.coe", bram);
    end


    always @(posedge clk) begin
        data_out <= bram[addr];
    end

endmodule
