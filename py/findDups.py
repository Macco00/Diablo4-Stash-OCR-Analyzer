import pytesseract
from PIL import Image
import Levenshtein
import os
import glob
import time
import re

start_time = time.time() # optimization

output_directory = 'C:/Users/marcu/Desktop/diablo/py/images/bannerText/'
output = os.path.join(output_directory, 'dupsPos.txt')
cacheFile = 'C:/Users/marcu/Desktop/diablo/py/Image_Cache.txt'

# How similiar two texts must be for it to be a hit
confidence = 0.88

# Remove old dupsPos file
if os.path.exists(output):
    os.remove(output)

# Get saved OCR text output
image_cache = []
with open(cacheFile, 'r') as file:
    for line in file:
        image_cache.append(line.strip())

pattern = r"\d+(\.\d+)?"

# Compare Legendary
print("--------------------------")
count = 0
#open output.txt and compare image cache to legendary database
with open(output, 'a') as f: 
    for i in range(len(image_cache)):
        str1 = image_cache[i]
        for j in range(i + 1, len(image_cache)):
            str2 = image_cache[j]
            str1 = re.sub(pattern, "{num}", str1)
            str2 = re.sub(pattern, "{num}", str2)
            similarity = 1.0 - Levenshtein.distance(str1, str2) / max(len(str1), len(str2)) # string compare algorithm
            if similarity > confidence:
                print(str(i) + " and " + str(j) + f" is {similarity:.2%}")
                count += 1
                f.write(str(i+1) + "\n" + str(j+1) + "\n")

print("Found " + str(count) + " duplicates")
print("--------------------------")

# time for script
end_time = time.time()
elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
