import pytesseract
from PIL import Image
import Levenshtein
import os
import glob
import time
import re
print(os.getcwd())

start_time = time.time() # optimization

output_folder = 'C:/Users/marcu/Desktop/diablo/py/images/bannerText/'
cache_saveLoc =  'C:/Users/marcu/Desktop/diablo/py/'
confidence = 0.88

# Place images in array and sort them (unsorted when just called)
image_files = glob.glob(output_folder + '*.png')
image_files = sorted(image_files, key=lambda x: int(os.path.splitext(os.path.basename(x))[0]))
cache_output = os.path.join(cache_saveLoc, 'Image_Cache.txt')
cacheFile = r'C:\Users\marcu\Desktop\diablo\py\Image_Cache.txt'

deleteCache = os.path.join(cache_saveLoc, cacheFile)

if os.path.exists(deleteCache):
    os.remove(deleteCache)

# Set the path to the Tesseract executable if it's not in the system PATH
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

def printStep(image_path1):
        image_path1 = image_path1.replace("C:/Users/marcu/Desktop/diablo/py/images/bannerText\\", "")
        image_path1 = image_path1.replace(".png", "")
        print(image_path1)
        

#-------------- legendary text cache and reader --------------------------------
       
# Cache
image_cache = []
print(len(image_files))
with open(cacheFile, 'a') as f:
    for i in range(len(image_files)):
        image_path = image_files[i]
        image = Image.open(image_path)
        image_text = pytesseract.image_to_string(image)
        image_cache.append(image_text.replace("\n", " ") + "\n")
    
        f.write(image_text.replace("\n", " ") + "\n")
        #printStep(image_path)

#for i in range(len(image_cache)):
    #printStep(image_cache[i])

#print(image_cache[1000]) # simple stop code------------
pattern = r"\d+(\.\d+)?"

#-------------- affixes and stuff --------------------------------

def printStep2(image_path1):
        image_path1 = image_path1.replace("C:/Users/marcu/Desktop/diablo/py/images/marked/banner/type\\", "")
        image_path1 = image_path1.replace(".png", "")
        print(image_path1)

affixSearch = False
if affixSearch:
    name_cache = []
    for i in range(len(name_files)):
        image_path = name_files[i]
        image = Image.open(image_path)
        image_text = pytesseract.image_to_string(image)
        name_cache.append(image_text)
        printStep2(image_path)
    
if affixSearch:
    for i in range(len(image_cache)):
        print(name_cache[i] + "\n")

# Search affixes
if affixSearch:
    for i in range(len(name_cache)):
        file_name = os.path.join(output_directory2, f"{i+1}.txt")
        file_content = name_cache[i] + image_cache[i]
        with open(file_name, "w") as file:
            file.write(file_content)


# time for legendary
end_time = time.time()
elapsed_time = (end_time - start_time)
print(f"Elapsed time: {elapsed_time} seconds")


