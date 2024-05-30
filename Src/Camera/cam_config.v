`timescale 1ns / 1ps
`default_nettype none

module cam_config
#(parameter CLK_F = 100_000_000)
(
    input wire clk,
    input wire rstn,
    input wire i2c_ready,
    input wire config_start,
    input wire [15:0] rom_data, 
    output reg [7:0] rom_addr,
    output reg i2c_start, 
    output reg [7:0] i2c_addr,
    output reg [7:0] i2c_data,
    output reg config_done
);

    localparam ten_ms = (CLK_F * 10) / 1000;
    localparam timer_size = $clog2(ten_ms);
    reg [timer_size - 1: 0] timer;
    
    localparam IDLE = 0;
    localparam SEND = 1;
    localparam DONE = 2;
    localparam WAIT = 3;

    reg [2:0] state;
    reg [2:0] return_state;
    reg [1:0] byte_idx; 
    
    always @(posedge clk or negedge rstn)
    begin
        if (!rstn) begin
            config_done <= 0;
            byte_idx <= 0; 
            rom_addr <= 0;
            i2c_addr <= 0; 
            i2c_start <= 0;
            i2c_data <= 0; 
            state <= IDLE;
        end
        else begin
            case(state)
                IDLE: 
                    state <= (config_start) ? SEND : IDLE;                        
                SEND:
                    if (i2c_ready)
                        case (rom_data)
                        16'hFF_FF: state <= DONE;
                        16'hFF_F0: begin
                            state <= WAIT;
                            return_state <= SEND;
                            timer <= ten_ms;
                            rom_addr <= rom_addr + 1;
                        end 
                        default: begin 
                            state <= WAIT;
                            return_state <= SEND; 
                            timer <= 1;                             
                            i2c_start <= 1;                                        
                            i2c_addr <= rom_data[15:8]; 
                            i2c_data <= rom_data[7:0];
                            rom_addr <= rom_addr + 1; 
                        end  
                        endcase 
                DONE:
                    begin
                    state <= IDLE;
                    config_done <= 1; 
                    end
                WAIT:
                    begin
                    state <= (timer == 1) ? return_state : WAIT;
                    timer <= (timer == 1) ? 0 : timer - 1; 
                    i2c_start <= 0;      
                    end
            endcase
        end   
    end 
           
endmodule
