from PIL import Image
import os
import shutil

# Constants
ORIGINAL_FILENAME = 'cat.jpg'
DESTINATION_DIRECTORY = '/Users/paulhondola/GitHub/FPGA-Image-Processing/VGA-Image-Testing/VGA-Image-Testing.srcs/sources_1/new'

# Rename the image to photo.jpg
def rename_to_photo_jpg(filename):
    if(filename == 'photo.jpg'):
        pass
    # Check if the file exists
    elif os.path.exists(filename):
        # Rename the file to photo.jpg
        os.rename(filename, 'photo.jpg')
        print(f"File '{filename}' renamed to 'photo.jpg'")
    else:
        print(f"File '{filename}' does not exist.")

def convert_to_coe():

# Load image
    img = Image.open('photo.jpg')
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


##### M A I N #####
rename_to_photo_jpg(ORIGINAL_FILENAME)
convert_to_coe()
shutil.move('image_data.coe', DESTINATION_DIRECTORY)
##### M A I N #####

# fprintf(fileID, 'memory_initialization_radix=16;\nmemory_initialization_vector=\n');
# for BRAM init
