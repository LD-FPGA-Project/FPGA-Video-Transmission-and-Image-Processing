`timescale 1ns / 1ps
`default_nettype none

module vga_driver
#(
    parameter hDisp = 640, 
    parameter hFp = 16,
    parameter hPulse = 96,
    parameter hBp = 48,   
    parameter vDisp = 480,
    parameter vFp = 10,   
    parameter vPulse = 2,
    parameter vBp = 33
)
(
    input wire clk,
    input wire rstn,
    output wire [9:0] x_counter,
    output wire [9:0] y_counter,
    output wire video,
    output wire hsync,
    output wire vsync
);
     

    localparam hEND = hDisp + hFp + hPulse + hBp; 
    localparam hSyncStart = hDisp + hFp;
    localparam hSyncEnd = hDisp + hFp + hPulse;
             
    localparam vEND = vDisp + vFp + vPulse + vBp;
    localparam vSyncStart = vDisp + vFp;
    localparam vSyncEnd = vDisp + vFp + vPulse;
     
    reg [9:0] hc;
    reg [9:0] vc; 
     
    always @(posedge clk or negedge rstn)
    begin
        if (!rstn) 
        begin
            hc <= 0;
            vc <= 0;
        end
        else 
        begin
            if (hc == hEND - 1)
            begin
                hc <= 0;
                if (vc == vEND - 1)
                    vc <= 0; 
                else
                    vc <= vc + 1;
            end 
            else
                hc <= hc + 1; 
        end
    end 
        
    assign x_counter = hc;
    assign y_counter = vc;
    assign video = ((hc < hDisp) && (vc < vDisp)); 
    assign hsync = ~((hc >= hSyncStart) && (hc < hSyncEnd));
    assign vsync = ~((vc >= vSyncStart) && (vc < vSyncEnd)); 
endmodule
