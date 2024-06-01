# FPGA-Video-Transmission-and-Image-Processing

- FPGA Board: Xilinx Nexys 4 Artix-7
- Camera: OV7670
- IDE: AMD Vivado 2023.2
- Language: Verilog / VHDL and Python

## Description

This project is based on video transmission from a camera with output on a monitor via a VGA interface.

It also uses the webcam on the local unit to display images on the monitor via UART protocol.
This feed can be used with opencv for face recognition.

Simple image processing algorithms are added to the system and can perform the following operations on a 12-bit RGB image:
- Convert to grayscale
- Invert colors

Max image resolution: 320x240p
