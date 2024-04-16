`timescale 1ns / 1ps
`default_nettype none

module top
    (   input wire i_top_clk,
        input wire i_top_rst,
        
        output wire [3:0] o_top_vga_red,
        output wire [3:0] o_top_vga_green,
        output wire [3:0] o_top_vga_blue,
        output wire       o_top_vga_vsync,
        output wire       o_top_vga_hsync
    );

    // Create clock outputs
    wire w_clk25m; // 25 MHz VGA clock

    // Assuming clock_gen is a valid module and is correctly instantiated with these ports
    clk_wiz_0 clock_gen (
        .clk_in1(i_top_clk),
        .clk_out1(w_clk25m)
    );

    wire w_rst_btn_db; // Debounced reset signal
    reg r1_rstn_clk25m, r2_rstn_clk25m; // Synchronized reset for the VGA clock domain

    // Debounce reset button (active-low)
    debouncer #(.DELAY(240_000)) top_btn_db (
        .i_clk(i_top_clk),
        .i_btn_in(~i_top_rst),
        .o_btn_db(w_rst_btn_db)
    );

    // Reset synchronization for the VGA clock domain
    always @(posedge w_clk25m or negedge w_rst_btn_db) begin
        if (!w_rst_btn_db) 
            {r2_rstn_clk25m, r1_rstn_clk25m} <= 2'b00;
        else
            {r2_rstn_clk25m, r1_rstn_clk25m} <= {r1_rstn_clk25m, 1'b1};
    end

    // Instantiate VGA interface
    vga_top display_interface (
        .i_clk25m(w_clk25m),
        .i_rstn_clk25m(r2_rstn_clk25m),
        .o_VGA_red(o_top_vga_red),
        .o_VGA_green(o_top_vga_green),
        .o_VGA_blue(o_top_vga_blue),
        .o_VGA_vsync(o_top_vga_vsync),
        .o_VGA_hsync(o_top_vga_hsync),
        .o_VGA_x(), // Optionally connect these if needed externally
        .o_VGA_y(),
        .o_VGA_video()
    );

endmodule
