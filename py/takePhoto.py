import os
import time
import mss
import mss.tools
import pyautogui
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

output_directory = "C:\\Users\\marcu\\Desktop\\diablo\\py\\images\\"
files = os.listdir(output_directory)

if res == "1": # 5120x1440
    start_x = 462
    start_y = 358

    end_x = 1272
    end_y = 1005

    w = 81
    h = 130
    
    areaToCap = (555, 85, 1825, 1345)
    areaOffset = 25 # stash slot to banner dist
    areaWidth = 600
    
else: # 1920x1080
    start_x = 45
    start_y = 269

    end_x = 655
    end_y = 753

    w = 61
    h = 97
    areaToCap = (45, 62, 1064, 1020)

start_area = [start_x, start_y, start_x + w, start_y + h]
stop_area = [end_x - w, end_y - h, end_x, end_y]
curr_area = start_area

pos = 1
recording = False

for file in files.copy():
    if file.endswith('.png'):
        file_path = os.path.join(output_directory, file)
        os.remove(file_path)

with mss.mss() as sct:
    while True:
        x, y = pyautogui.position()

        # Mouse in start area
        if start_area[0] <= x <= start_area[2] and start_area[1] <= y <= start_area[3] and not recording:
            print("Recording...")
            recording = True

        # Mouse in end area
        elif stop_area[0] <= x <= stop_area[2] and stop_area[1] <= y <= stop_area[3] and recording:
            print("Recording stopped")
            time.sleep(1)
            areaToCap = (curr_area[2] + areaOffset, 85, curr_area[0] + areaWidth, 1345)
            sct_img = sct.grab(areaToCap)
            frame_path = os.path.join(output_directory, str(pos) + ".png")
            mss.tools.to_png(sct_img.rgb, sct_img.size, output=frame_path)
            print("Done")
            recording = False
            break

        if curr_area[0] <= x <= curr_area[2] and curr_area[1] <= y <= curr_area[3] and recording:
            time.sleep(0.3)
            areaToCap = (curr_area[2] + areaOffset, 85, curr_area[0] + areaWidth, 1345)
            sct_img = sct.grab(areaToCap)
            frame_path = os.path.join(output_directory, str(pos) + ".png")
            mss.tools.to_png(sct_img.rgb, sct_img.size, output=frame_path)
            pos += 1

            if curr_area[0] + w == end_x:
                curr_area[0] = start_x
                curr_area[2] = start_x + w
                curr_area[1] = curr_area[1] + h
                curr_area[3] = curr_area[3] + h
            else:
                curr_area[0] = curr_area[0] + w
                curr_area[2] = curr_area[2] + w
