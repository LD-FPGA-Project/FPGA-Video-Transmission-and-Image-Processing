`timescale 1ns / 1ps

module gray_scale(
    input wire clk,
    input wire [11:0] pixel_data,
    output reg [11:0] data_out
    );
        
    reg [5:0] medie = 0;
    reg [3:0] medie_full;
    
    always @(posedge clk) begin 
        medie = (pixel_data[3:0] + pixel_data[7:4] + pixel_data[11:8]) / 3;
        medie_full = medie[3:0];
        data_out <= {medie_full, medie_full, medie_full};
   end
endmodule