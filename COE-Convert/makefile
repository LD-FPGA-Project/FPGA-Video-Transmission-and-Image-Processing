# RENAME THE IMAGE TO image.jpg
# OPEN MATLAB AND RUN convert_jpg_to_coe.m
# RUN THIS MAKEFILE
# THE OUTPUT WILL BE IN THE FILE image_data.coe
# MOVE THE FILE TO /FPGA-Image-Processing/VGA-Image-Testing/VGA-Image-Testing.srcs/sources_1/new
SRC_PATH = /Users/paulhondola/GitHub/FPGA-Image-Processing/COE-Convert
DEST_PATH = /Users/paulhondola/GitHub/FPGA-Image-Processing/VGA-Image-Testing/VGA-Image-Testing.srcs/sources_1/new
INPUT = photo.jpg
OUTPUT = image_data.coe

IMAGE_JPG = $(wildcard *.jpg)
IMAGE_JPEG = $(wildcard *.jpeg)

rename:
	# mv $(IMAGE_JPEG) $(SRC_PATH)/$(INPUT)
	mv $(IMAGE_JPG) $(SRC_PATH)/$(INPUT)
move:
	mv $(OUTPUT) $(DEST_PATH)
