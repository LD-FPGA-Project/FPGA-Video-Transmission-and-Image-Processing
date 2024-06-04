`timescale 1ns / 1ps
`default_nettype none

module sccb_master
#(parameter CLK_F = 100_000_000, parameter SCCB_F = 400_000)
(
    input wire clk,
    input wire rstn,
    
    input wire read,       // I2C Commands. Assume read/write are mutually exclusive
    input wire write,
    input wire start,
    input wire restart,
    input wire stop,
    
    input wire [7:0] din,
    input wire [7:0] addr, 
    
    output wire [7:0] dout,
    output wire ready,      
    output wire done,       // 1-cycle tick when a transaction is completed 
    output wire ack,       
    
    inout wire sda,      
    output wire scl
);
     
    // Camera Address for writing  
    localparam CAM_ADDR = 7'h21;
    
    // FSM States
    localparam [3:0] IDLE = 0,
                     START1 = 1,
                     START2 = 2,
                     WAIT = 3,
                     DATA1 = 4,
                     DATA2 = 5,
                     DATA3 = 6,
                     DATA4 = 7,
                     DATADONE = 8,
                     RESTART = 9, 
                     END1 = 10,
                     END2 = 11;
                     
    // CLK_F/SCCB_F is number of clocks in ONE period of the SCCB clock (SCL)                   
    localparam TIMER_WIDTH = $clog2(CLK_F/SCCB_F); 
    localparam HALF = CLK_F/(2*SCCB_F);
    localparam QUARTER = HALF/2;
                      
    reg [TIMER_WIDTH - 1: 0] timer;
    reg [3:0] state;
    reg [8:0] data_bit_idx;
    reg [8:0] tx;
    reg [8:0] rx; 
    reg [7:0] latched_data, latched_addr;
    reg [1:0] byte_idx; 
    reg data_state;
    wire sda_in;
    
    reg done_reg;
    reg ready_reg;
       
    // Buffer SCL and SDA lines 
    reg scl_reg, scl_reg2;
    reg sda_reg, sda_en_reg2;                 
    
    // Register read/write inputs
    reg read_reg;
    reg write_reg;
    
    initial begin
        state = IDLE;
        ready_reg = 1'b1;
        scl_reg = 1'b1; 
        sda_reg = 1'b1;
        scl_reg2 = 1'b1;
        sda_en_reg2 = 1'b1; 
        done_reg = 1'b0; 
    end
            
    always @(posedge clk or negedge rstn)
    begin
        if (!rstn) begin
            scl_reg2 <= 1'b1;
            sda_en_reg2 <= 1'b1;
        end
        else begin
            scl_reg2 <= scl_reg;
            sda_en_reg2 <= sda_reg;
        end 
    end 
        
    always @(posedge clk)
    begin
        read_reg <= read;
        write_reg <= write;
    end
        
    // 2-Wire SCCB bus lines
    assign sda_in = (data_state && read_reg) || (data_state && write_reg && data_bit_idx == 8);
    assign scl = (scl_reg2) ? 1'bZ : 1'b0; 
    assign sda = (sda_in || sda_en_reg2) ? 1'bZ : 1'b0;
    
    // State Machine 
    always @(posedge clk)
    begin
        timer <= timer + 1'b1; // Free Running Counter
        case(state)
            IDLE: begin // SDA and SCL line high; Wait for start command
                timer <= 0;
                ready_reg <= 1'b1;
                done_reg <= 1'b0;
                data_state <= 1'b0;
                data_bit_idx <= 9'b0;
                byte_idx <= 2'b0;
                scl_reg <= 1'b1; 
                sda_reg <= 1'b1;
                latched_data <= 8'hZZ;
                latched_addr <= 8'hZZ;
                if (start) begin
                    state <= START1;
                    timer <= 0;
                    latched_data <= din; 
                    latched_addr <= addr; 
                    ready_reg <= 1'b0; 
                end
            end
            START1: begin // Bring SDA line low; Wait for 1/2 period of SCL
                sda_reg <= 1'b0;
                if (timer == (HALF-1)) begin
                    timer <= 0; 
                    state <= START2;
                end
            end
            START2: begin // Bring SCL line low; Wait for 1/2 period of SCL
                scl_reg <= 1'b0; 
                if (timer == (HALF-1)) begin
                    timer <= 0;
                    state <= WAIT; 
                end
            end
            WAIT: begin // Both SCL/SDA low; Wait for Control Signal (Read or Write)
                scl_reg <= 1'b0;
                sda_reg <= 1'b0;
                timer <= 0;
                data_bit_idx <= 0;
                byte_idx <= byte_idx + 1'b1;
                state <= (byte_idx == 3) ? END1 : DATA1;
                case(byte_idx) // 3-Phase Write Cycle (no ack in SCCB)
                    2'b00: tx <= {CAM_ADDR, ~write, 1'b1}; // byte1 = {SLAVE ADDRESS, WR BIT, Don't Care Bit}      
                    2'b01: tx <= {latched_addr, 1'b1}; // byte2 = {Register Addr, Don't Care Bit} 
                    2'b10: tx <= {latched_data, 1'b1}; // byte3 = {Data to Register, Don't Care Bit} 
                    default: tx <= {latched_data, 1'b1}; 
                endcase
                
                if ((!write) && (!read)) begin
                    if (stop) state <= END1; 
                    else if (restart || start) state <= RESTART;
                    else state <= IDLE; 
                end
            end 
            DATA1: begin // Load Data Bit to SDA before sampled by SCL
                sda_reg <= tx[8]; 
                scl_reg <= 1'b0; 
                data_state <= 1'b1;
                if (timer == (QUARTER-1)) begin
                    timer <= 0;
                    state <= DATA2; 
                end
            end
            DATA2: begin // SCL Samples the Data Bit (Shift in for read/Shift out for write)
                sda_reg <= tx[8];
                scl_reg <= 1'b1; 
                // Sample read bits in the middle of SCL being HIGH for sample reads
                if (timer == (QUARTER-1)) begin      
                    timer <= 0; 
                    state <= DATA3;
                    rx <= {rx[7:0], sda};   
                end
            end 
            DATA3: begin // Wait another quarter SCL cycle of it being HIGH
                sda_reg <= tx[8];
                scl_reg <= 1'b1; 
                if (timer == (QUARTER-1)) begin
                    timer <= 0; 
                    state <= DATA4; // Shift Data In
                end
            end
            DATA4: begin // Bring SCL Low again; Wait another quarter of a cycle
                sda_reg <= tx[8];
                scl_reg <= 1'b0; 
                if (timer == (QUARTER-1)) begin
                    timer <= 0;
                    if (data_bit_idx == 8) begin
                        state <= DATADONE;
                        done_reg <= 1'b1; // Set done signal HIGH
                        data_state <= 1'b0;
                    end
                    else begin
                        tx <= {tx[7:0], 1'b0};
                        data_bit_idx <= data_bit_idx + 1'b1;
                        state <= DATA1;
                    end
                end
            end
            DATADONE: begin
                done_reg <= 1'b0; // Set done signal LOW since it's a tick
                sda_reg <= 1'b0;
                scl_reg <= 1'b0;
                if (timer == (QUARTER-1)) begin
                    timer <= 0;
                    state <= WAIT;
                end
            end
            RESTART: begin
                if (timer == (HALF-1)) begin
                    timer <= 0;
                    state <= START1;
                end
            end
            END1: begin
                // SCL low, SDA low, SCL high, SDA high
                scl_reg <= 1'b1;
                sda_reg <= 1'b0; 
                if (timer == (HALF-1)) begin
                    timer <= 0;
                    state <= END2;
                end
            end
            END2: begin
                scl_reg <= 1'b1;
                sda_reg <= 1'b1;
                if (timer == (HALF-1)) begin
                    timer <= 0;
                    state <= IDLE;
                end
            end     
        endcase 
    end 

    // Assign Output from SCCBA Reads ( don't read ACK bit )
    assign dout = rx[8:1]; 
    // ACK (from slave in writes should be '0')
    assign ack = rx[0]; 
    
    // Assign I2C Master Status Signals  
    assign ready = ready_reg;  
    assign done = done_reg; 
       
endmodule 
