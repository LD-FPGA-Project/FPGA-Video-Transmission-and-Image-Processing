# FPGA-Image-Processing

- FPGA Board: Xilinx Nexys 4 Artix-7
- Camera: OV7670
- IDE: AMD Vivado 2023.2
- Language: Verilog / VHDL

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

- Make sure the photo is in a .jpg format
- Move to the COE-Convert Directory
- Convert the image with the python script into .coe that also moves the image to the necessary directory
