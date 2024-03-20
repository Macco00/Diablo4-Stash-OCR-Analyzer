import pytesseract
from PIL import Image
import Levenshtein
import os
import glob
import time
import re

start_time = time.time() # optimization

output_directory = 'C:/Users/marcu/Desktop/diablo/py/images/bannerText/'
cacheFile = 'C:/Users/marcu/Desktop/diablo/py/Image_Cache.txt'

# Pos and Names correlate, ex. line 2 with pos "13" has its name in line 2 in the other file
outputPos = os.path.join(output_directory, 'aspectPos.txt')
outputNames = os.path.join(output_directory, 'aspectNames.txt')

# How similiar two texts must be for it to be a hit
confidence = 0.80

# Remove prev files
if os.path.exists(outputPos):
    os.remove(outputPos)
if os.path.exists(outputNames):
    os.remove(outputNames)

# Get saved OCR text output
image_cache = []
with open(cacheFile, 'r') as file:
    for line in file:
        image_cache.append(line.strip())

# Search for
print("Searching for chosen aspects")
count = 0
# file containing all chosen aspects (Name, desc)
file1 = open('C:/Users/marcu/Desktop/diablo/py/images/bannerText/desiredAspects.txt', 'r')
line = file1.readline()

# fill array with chosen aspects
temp_cache = [None] * 500
i = 0
while True:
    temp_cache[i] = line
    line = file1.readline()
    i = i + 1
    if not line:
        break
size = i
aspect_cache = [None] * size
i = 0
while i < size:
    aspect_cache[i] = temp_cache[i]
    i = i + 1
i = 0
j = 0

pattern = r"\d+(\.\d+)?"

# find chosen aspects
print(str(len(aspect_cache)))
print(aspect_cache[1] + " ------")
with open(outputPos, 'a') as f:
    for i in range(len(image_cache)):
        str1 = image_cache[i]
        str1 = str1.replace("\n", "")
        for j in range(1, len(aspect_cache), 2):
            str2 = aspect_cache[j]
            str1 = re.sub(pattern, "{num}", str1)
            str2 = re.sub(pattern, "{num}", str2)
                
            similarity = 1.0 - Levenshtein.distance(str1, str2) / max(len(str1), len(str2))
            if i+1 == 6:
                print("//////////////////")
                print(str(i+1) + "\nand \n" + str(j+1) + f"\n is {similarity:.2%}\n")
                print(str1 + "\n" + str2 + "\n")
                print("//////////////////")
            if similarity > confidence:
                count += 1
                print(str(i+1) + "\nand \n" + str(j+1) + f"\n is {similarity:.2%}\n")
                print(str1 + "\n" + str2 + "\n")
                with open(outputNames, 'a') as x:
                    x.write(aspect_cache[j-1])
                f.write(str(i+1) + "\n")
print("Found " + str(count) + " desired aspects")

# time for script
end_time = time.time()
elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")

