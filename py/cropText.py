from PIL import Image
from PIL import ImageEnhance
from PIL import ImageDraw
import pyautogui
import numpy as np
import cv2
import os
import glob
import time

start_time = time.time() # optimization

#------INI STUFF-----------
import configparser
import io

currDir = os.getcwd()
print(currDir)
dirIni = currDir.replace("\\py", "") + "\\aspects.ini"
print(dirIni)

config = configparser.ConfigParser()

# Read the file with utf-16-le encoding
with io.open(dirIni, 'r', encoding='utf-16-le', errors='ignore') as file:
    content = file.read()

# Remove null characters from the content
content = content.replace('\x00', '')

# Load the modified content into the ConfigParser
config.read_string(content)

res = config["OPTIONS"]["Resolution"]

#-----------------
if res == "1": # 5120x1440
    offset = 35
    gemOffset = 11
    gemWidth = 469
    aspectOffset = 5
    aspectWidth = 455
    #affixTop = 5
    #affixWidth = 175
    #affixOffset = 24
    textWidth = 90
    scrollOffset = 4
    scrollWidth = 285

    topOffset = 42

    toppng = "C:/Users/marcu/Desktop/diablo/py/ref/top.png"
    starpng = "C:/Users/marcu/Desktop/diablo/py/ref/star.png"
    affixpng = "C:/Users/marcu/Desktop/diablo/py/ref/affix.png"

    
else: # 1920x1080
    offset = 26
    gemOffset = 8
    gemWidth = 352
    aspectOffset = 4
    aspectWidth = 352
    textWidth = 68

    topOffset = 10

    starpng = "C:/Users/marcu/Desktop/diablo/py/ref/1080/star.png"


# Folder path containing the images
folder_path = 'C:/Users/marcu/Desktop/diablo/py/images/' #'C:/Users/marcu/Desktop/diablo/test/images/marked/banner/'
save_path = 'C:/Users/marcu/Desktop/diablo/py/images/bannerText/'

files = os.listdir(save_path)

image_files = glob.glob(folder_path + '*.png')
image_files = sorted(image_files, key=lambda x: int(os.path.splitext(os.path.basename(x))[0]))
pos = 1
posT = "1"

color = 0
brightness = 0.1
contrast = 5
highlights = 5
exposure = 0.2
shadows = 5

# adjust image quality for better ocr
def adjust_image(image):
    # Adjust color
    enhancer = ImageEnhance.Color(image)
    image = enhancer.enhance(color)

    # Adjust brightness
    enhancer = ImageEnhance.Brightness(image)
    image = enhancer.enhance(brightness)

    # Adjust contrast
    enhancer = ImageEnhance.Contrast(image)
    image = enhancer.enhance(contrast)

    # Adjust highlights
    enhancer = ImageEnhance.Brightness(image)
    image = enhancer.enhance(highlights)

    # Adjust exposure
    enhancer = ImageEnhance.Brightness(image)
    image = enhancer.enhance(exposure)

    # Adjust shadows
    enhancer = ImageEnhance.Brightness(image)
    image = enhancer.enhance(shadows)
    # Save the modified image
    return image

# Remove previous images
for file in files.copy():
    if file.endswith('.png'):
        file_path = os.path.join(save_path, file)
        os.remove(file_path)

def search_color(image_path, target_color):
    # Load the image using Pillow (PIL) and convert it to a NumPy array
    image = np.array(Image.open(image_path))

    # Compare the target color with the image pixels using NumPy broadcasting
    color_match = np.all(image == target_color, axis=-1)

    # Find the last row (y-coordinate) where the target color is found
    y_coords, x_coords = np.where(color_match)
    if y_coords.size == 0:
        return None

    # Get the last matching y-coordinate (last occurrence)
    last_matching_y = y_coords[-1]

    return last_matching_y

# Iterate through each image file in the folder
for i in range(len(image_files)):
    filename = image_files[i]
    legColor = (248, 128, 5)
    if filename.endswith('.png'):
        # Open the image
        image_path = image_files[i]
        image = Image.open(image_path)
        
        obj1 = pyautogui.locate(starpng, image, grayscale=True, confidence=0.8) # Legendary only

        print(obj1)

        if(obj1 is None):
            print("|" +str(i+1) + " -> Image is empty|")
            continue
            
        # Crop the image
        else:
            colorPos = search_color(image_path, legColor)
            print(colorPos)
            print("|" +str(i+1) + " -> Crop")
            cropped_image = image.crop((obj1.left, obj1.top, obj1.left + aspectWidth, colorPos + 5))
            


        # Save the cropped image with a new filename
        output_path = os.path.join(save_path, posT + '.png')
        cropped_image = adjust_image(cropped_image)
        cropped_image.save(output_path)
        #binary_image = binarize(output_path, 80, 2)
                
        # Save the binarized image with the black box
        #cv2.imwrite(output_path, binary_image)
    
        pos += 1
        posT = str(pos)
    
        filename = filename.replace("C:/Users/marcu/Desktop/diablo/py/images\\", "")
        filename = filename.replace(".png", "")
        print(f"Image {filename} saved successfully.")

# time for script
end_time = time.time()
elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
