`timescale 1ns / 1ps
`default_nettype none 



module cam_top
#(parameter CAM_CONFIG_CLK = 100_000_000)
     (  input wire          i_clk,
        input wire          i_rstn_clk,
        input wire          i_rstn_pclk, 
       
       
        input wire          i_cam_start,
        output wire         o_cam_done,
        
       
        input wire          i_pclk, 
        input wire [7:0]    i_pix_byte, 
        input wire          i_vsync,
        input wire          i_href,
        output wire         o_reset,     
        output wire         o_pwdn,       
        output wire         o_siod,
        output wire         o_sioc,
        
        
        output wire         o_pix_wr, 
        output wire [11:0]  o_pix_data,
        output wire [18:0]  o_pix_addr
    );
    
    assign o_reset = 1;      
    assign o_pwdn  = 0;       
       
    wire       w_start_db;
        
    debouncer 
    #(  .DELAY(240_000)         )    
    cam_btn_start_db
    (   .i_clk(i_clk            ), 
        .i_btn_in(i_cam_start   ),
        
        
        .o_btn_db(w_start_db    )
    );
    
    cam_init 
    #(  .CLK_F(CAM_CONFIG_CLK       ), 
        .SCCB_F(400_000)            )
    configure_cam
    (   .i_clk(i_clk                ),
        .i_rstn(i_rstn_clk          ),
        
      
        .i_cam_init_start(w_start_db),
        .o_cam_init_done(o_cam_done ),
        
        
        .o_siod(o_siod              ),
        .o_sioc(o_sioc              ),
        
    
        .o_data_sent_done(          ),
        .o_SCCB_dout(               )
    );
    
    cam_capture
    cam_pixels
    ( 
        .i_pclk(i_pclk         ), 
        .i_vsync(i_vsync       ),
        .i_href(i_href         ),
        
       
        .i_cam_done(o_cam_done ),
        
        .i_D(i_pix_byte        ),
        .o_pix_addr(o_pix_addr ),
        .o_wr(o_pix_wr         ),           
        .o_pix_data(o_pix_data )  
    );
      
endmodule