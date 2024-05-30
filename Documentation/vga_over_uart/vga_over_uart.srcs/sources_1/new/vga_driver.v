`timescale 1ns / 1ps
`default_nettype none

module vga_driver
#(parameter hDisp  = 1280, 
    parameter hFp    = 48,
    parameter hPulse = 112,
    parameter hBp    = 248,   
    parameter vDisp  = 1024,
    parameter vFp    = 1,
    parameter vPulse = 3,
    parameter vBp    = 38)
    (   input wire          i_clk,
        input wire          i_rstn,
        output wire [10:0]   o_x_counter,
        output wire [10:0]   o_y_counter,
        output wire         o_video,
        output wire         o_hsync,
        output wire         o_vsync
    );

    localparam hEND        = hDisp + hFp + hPulse + hBp; 
    localparam hSyncStart  = hDisp + hFp;
    localparam hSyncEnd    = hDisp + hFp + hPulse;
    
    localparam xOffset = (hDisp - 640) / 2; 
    localparam yOffset = (vDisp - 480) / 2;  

    localparam vEND        = vDisp + vFp + vPulse + vBp;
    localparam vSyncStart  = vDisp + vFp;
    localparam vSyncEnd    = vDisp + vFp + vPulse;
    
    reg [10:0] hc;
    reg [10:0] vc; 
    
    always @(posedge i_clk or negedge i_rstn)
        begin
            if(!i_rstn) begin
                hc <= 0;
                vc <= 0;
            end
            else begin
                if(hc == hEND-1) begin
                    hc <= 0;
                    if(vc == vEND-1)
                        vc <= 0; 
                    else
                        vc <= vc + 1'b1;
                end 
                else
                    hc <= hc + 1'b1; 
            end
        end 
        
    assign o_x_counter = (hc >= xOffset && hc < xOffset + 640) ? (hc - xOffset) : 11'b0;
    assign o_y_counter = (vc >= yOffset && vc < yOffset + 480) ? (vc - yOffset) : 11'b0;

    assign o_video     = ((hc >= xOffset) && (hc < xOffset + 640) && (vc >= yOffset) && (vc < yOffset + 480)); 
    assign o_hsync     = ~((hc >= hSyncStart) && (hc < hSyncEnd));
    assign o_vsync     = ~((vc >= vSyncStart) && (vc < vSyncEnd)); 
                        
endmodule
