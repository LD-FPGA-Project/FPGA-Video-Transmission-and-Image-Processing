set_property SRC_FILE_INFO {cfile:c:/Users/catal/Documents/GitHub/FPGA-Image-Processing/FPGA-Image_Processing/FPGA-Image_Processing.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc rfile:../../../FPGA-Image_Processing.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
