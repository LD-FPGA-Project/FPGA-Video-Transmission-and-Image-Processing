from PIL import Image
import os

# Constants
ORIGINAL_FILENAME = 'webcam_screenshot.jpg'
DESTINATION_DIRECTORY = '/Users/paulhondola/Developer/FPGA-Image-Processing/VGA-Image-Testing/VGA-Image-Testing.srcs/sources_1/new'

def convert_to_coe():

# Load image
    img = Image.open(ORIGINAL_FILENAME)
# Resize image
    img = img.resize((320, 240))

# Scale from 0-255 to 0-15
    img = img.convert('RGB')
    img = img.point(lambda p: p * 15 / 255)

# Open COE file for writing
    file_id = open('image_data.coe', 'w')

# Iterate over each pixel and write to COE file
    for row in range(img.height):
        for col in range(img.width):
            r, g, b = img.getpixel((col, row))
            file_id.write(f'{r:01X}{g:01X}{b:01X} ')

    file_id.close()
# fprintf(fileID, 'memory_initialization_radix=16;\nmemory_initialization_vector=\n');
# for BRAM init
