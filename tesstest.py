import cv2
import os
import pytesseract
import re
import time

start_time = time.time() # optimization

def binarize(input_image_path, output_image_path, threshold_value, upscale):
    # Read the image in grayscale
    image = cv2.imread(input_image_path, cv2.IMREAD_GRAYSCALE)

    # Upscale the image by a factor of 2 (you can adjust the factor as needed)
    upscaled_image = cv2.resize(image, None, fx=upscale, fy=upscale, interpolation=cv2.INTER_LINEAR)

    # Perform thresholding (global)
    _, binary_image = cv2.threshold(upscaled_image, threshold_value, 255, cv2.THRESH_BINARY)

    # Add the black box to the top-right corner of the binarized image
    box_width = int(binary_image.shape[1] * 0.3)  # 20% of the image width
    box_height = int(binary_image.shape[0] * 0.2)  # 5% of the image height
    binary_image[:box_height, -box_width:] = 0

    # Save the binarized image with the black box
    cv2.imwrite(output_image_path, binary_image)

    return binary_image

def readImage(binary_image):
    # Run Tesseract OCR on the binarized image
    extracted_text = pytesseract.image_to_string(binary_image)

    #print(extracted_text)

    # Fix affix symbols
    extracted_text = extracted_text.replace("¢", "¤").replace("©", "¤").replace("°", "¤").replace("®", "")
    extracted_text = extracted_text.replace("@", "O")

    # Make headers
    extracted_text = extracted_text.replace("\n\n", "\n[Type]\n", 1)
    extracted_text = extracted_text.replace("\n\n", "\n[Power]\n", 1)
    extracted_text = extracted_text.replace("\n\n", "\n[Affixes]\n", 1)
    extracted_text = extracted_text.replace("\n\n", "\n")

    # Fix item power info dash lines
    extracted_text = extracted_text.replace("-*","> ").replace("-¤","> ")
    extracted_text = extracted_text.replace("—*","> ").replace("—¤","> ")

    # Condense the text
    lines = extracted_text.splitlines()
    formatted_lines = [lines[0]]
    for i in range(1, len(lines)):
        #Fuse rows not starting with symbol
        if not lines[i].startswith(("¤", "*", "[", "> ")) and not lines[i-1].startswith(("[Affixes]", "[Power]", "[Type]")):
            formatted_lines[-1] += " " + lines[i]
        #Fuse if affix row starts with "["
        elif lines[i].startswith("[") and not lines[i].startswith(("[Affixes]", "[Power]", "[Type]", "[Legendary]")) and lines[i-1].startswith("¤"):
            formatted_lines[-1] += " " + lines[i]
        else:
            formatted_lines.append(lines[i])

    extracted_text = "\n".join(formatted_lines)
    item_power = re.search(r"\d", extracted_text)
    legendaryPos = re.search(r"[*]", extracted_text)
    extracted_text = extracted_text[:item_power.start()] + "\n" + extracted_text[item_power.start():]
    extracted_text = extracted_text[:legendaryPos.start()] + "\n[Aspect]" + extracted_text[legendaryPos.start():]

    # Save the OCR output as a text file
    text_file_path = os.path.splitext(output_image_path)[0] + ".txt"
    with open(text_file_path, "w") as text_file:
        text_file.write("[Name]\n")
        text_file.write(extracted_text)
        
def openResult():
    # Open the modified image and the text file using the default applications
    text_file_path = os.path.splitext(output_image_path)[0] + ".txt"
    os.startfile(output_image_path)
    os.startfile(text_file_path)

def readBanner(image_path):
    # Replace these paths with your input and output image paths
    input_image_path = "C:/Users/marcu/Desktop/diablo/1.png"
    output_image_path = "C:/Users/marcu/Desktop/diablo/binary.png"

    # Choose the threshold value (adjust as needed based on image characteristics)
    threshold_value = 80 # 100
    upscale = 3 # 4

    image = binarize(input_image_path, output_image_path, threshold_value, upscale)
    readImage(image)
    openResult()

# time for script
end_time = time.time()
elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
