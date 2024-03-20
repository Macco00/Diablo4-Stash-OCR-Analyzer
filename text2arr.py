import re

# Define the array to store the lines
lines_array = [["", ""] for _ in range(1000)]

# Specify the file path
file_path = "C:/Users/marcu/Desktop/diablo/affixes/txt/affixes.txt"

pattern = r"\d+(\.\d+)?"
plClass = ("Barbarian", "Druid", "Necromancer", "Rogue", "Sorcerer", "Implicit", "All Classes")
itemType = ("Helm", "Chest Armor", "Gloves", "Pants", "Boots", "Amulet", "Ring", "1h Weapon", "2h Weapon", "Offhand", "Shield")

i = 0
lastType = ""  # Initialize lastType outside the loop
with open(file_path, 'r') as file:
    for line in file:
        # Remove leading/trailing whitespaces and replace numbers with {NUM}
        text = line.strip()

        if text in itemType:
            lastType = text

        elif text in plClass:
            lastClass = text
        elif text and text not in plClass and lastClass != "Implicit":
            text = re.sub(pattern, "{num}", text)
            lines_array[i][0] = text
            lines_array[i][1] = lastType
            i += 1  # Increment i only for non-empty lines and not plClass lines

# Create a copy of lines_array with merged elements
linesCopy = [["", ""] for i in range(len(lines_array))]
for i in range(len(lines_array)):
    if lines_array[i][0] != "":
        linesCopy[i][0] = lines_array[i][0]
        linesCopy[i][1] = lines_array[i][1]

        for j in range(i + 1, len(lines_array)):
            if lines_array[i][0] == lines_array[j][0]:
                linesCopy[i][1] += ", " + lines_array[j][1]
                lines_array[j][0]  = ""
                lines_array[j][1]  = ""

# Print the array (optional),
print("affixArray := [")
for line in linesCopy:
    if line[1] != "":
        print(line + ",")
print(",]")
