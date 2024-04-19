`timescale 1ns / 1ps

module invert_colors(
    input wire clk,
    input wire [11:0] pixel_data,
    output reg [11:0] data_out
    );
        

    
    always @(posedge clk) begin 
        data_out <= {4'hF - pixel_data[3:0], 4'hF - pixel_data[7:4], 4'hF - pixel_data[11:8]};
   end
endmodule
