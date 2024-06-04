`timescale 1ns / 1ps
`default_nettype none

module cam_capture
(
    input wire pclk,
    input wire vsync,
    input wire href,    
    input wire [7:0] D,
    input wire cam_done,
    output reg [18:0] pix_addr, 
    output reg [11:0] pix_data,      
    output reg wr                   
);

// Negative/Positive Edge Detection of vsync for frame start/frame done signal
reg vsync_sync1, vsync_sync2; 
wire frame_start, frame_done;

initial { vsync_sync1, vsync_sync2 } = 0; 
always @(posedge pclk)
    {vsync_sync2, vsync_sync1} <= {vsync_sync1, vsync}; 

assign frame_start = (vsync_sync1 == 0) && (vsync_sync2 == 1); // Negative Edge of vsync
assign frame_done = (vsync_sync1 == 1) && (vsync_sync2 == 0); // Positive Edge of vsync

// FSM for capturing pixel data in pclk domain
localparam [1:0] WAIT = 2'd0,
                 IDLE = 2'd1,
                 CAPTURE = 2'd2;

reg half_data;             
reg [1:0] state;
reg [3:0] pix_buf;
                                                                             
always @(posedge pclk)
begin
    half_data <= 0;
    wr <= 0;
    pix_data <= pix_data;  
    pix_addr <= pix_addr;
    state <= WAIT;
    case(state)
        WAIT: 
        begin
            // Skip the first two frames on start-up
            state <= (frame_start && cam_done) ? IDLE : WAIT;
        end
        IDLE:        
        begin
            state <= (frame_start) ? CAPTURE : IDLE;
            pix_addr <= 0;
            pix_data <= 0; 
        end
        CAPTURE:
        begin
            state <= (frame_done) ? IDLE : CAPTURE;
            pix_addr <= (half_data) ? pix_addr + 1'b1 : pix_addr;   
            if (href)
            begin 
                 // Register first byte
                 if (!half_data)   
                    pix_buf <= D[3:0];      
                 half_data <= ~half_data;                       
                 wr <= (half_data) ? 1'b1 : 1'b0;
                 pix_data <= (half_data) ? {pix_buf, D} : pix_data; 
            end 
        end  
    endcase
end
                 
endmodule
