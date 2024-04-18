# FPGA-Image-Processing

- FPGA Board: Xilinx Nexys 4 Artix-7
- Camera: OV7670
- IDE: AMD Vivado 2023.2
- Language: Verilog

## Description

This project is a simple image processing system that can perform the following operations on a 12-bit RGB image:

- Convert to grayscale
- Invert colors
- Brightness adjustment
- Contrast adjustment
- Gamma correction
- Color filterization

The image processing system is implemented on an FPGA board. The image is stored in the FPGA's block RAM and the processed image is displayed on a VGA monitor.

## HOW TO RUN

- Rename the photo to "image.jpg"
- Move to the COE-Convert Directory
- Convert the image with the Matlab script into .coe
- Run the C code inside with the "make" command in terminal
- Move the resulting file "image_data.coe" to the /FPGA-Image-Processing/Src/VGA/Show-Image directory
