`timescale 1ns / 1ps
`default_nettype none

module debouncer
#(parameter DELAY = 1_000_000)
(
    input wire clk,
    input wire btn_in,
    output wire btn_db         
);

    localparam MAX_COUNT = $clog2(DELAY); 
    reg [MAX_COUNT-1:0] counter;
    reg sample;
    
    initial { counter, sample } = 0; 
    
    always @(posedge clk)
    begin
        if (btn_in !== sample && counter < DELAY)
            counter <= counter + 1'b1; 
        else if (counter == DELAY)
        begin
            counter <= 0;
            sample <= btn_in;
        end
        else
            counter <= 0;  
    end 

    assign btn_db = sample; 

endmodule
