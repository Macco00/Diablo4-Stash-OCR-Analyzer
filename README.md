# Diablo4-Stash-OCR-Analyzer
**(Don’t use this program and expect it to work; it’s outdated and deprecated. Its purpose is to demonstrate the end result.)**

This project was created during the launch of Diablo4 when the ability to remove duplicate items or search for specific aspects was not a feature. It was also my first big project and hence is very cluttered and spagettified. 

The program uses two GUIs made in AutoHotkey V.2, one placed on top of the game to showcase the program’s abilities, and another to configure the settings. The settings configuration focuses on the user searching for specific aspects split across the game’s different classes. Since elements are drawn on the screen relative to the upper left corner of one’s monitor, two resolution options are also provided.

The in-game stash consists of a 10x5 grid and displays an item’s information while the mouse hovers over its position. Once the mouse hovers over the first position, a Python script takes a relative screenshot of the item’s informational banner instead of the entire screen to save time. This continues from left-to-right, top-to-bottom, or until the user moves the mouse to the designated end area.

![Stash pattern](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/pattern.png)
![Item banner](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/1.png)

The script is then asked to find a reference image in all the screenshots and crop them so only the item’s aspect information is kept. This reference image is a golden star and always appears in front of the aspect text. All images are then converted to their binary representation using Python’s image editing library. This greatly improves the accuracy of the OCR since there is no background or any noise to interpret as characters.

![Aspect banner, BW](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/binary.png)
![Aspect text, BW](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/binaryTx.png)

[Tesseract OCR](https://github.com/tesseract-ocr/tesseract) is an open-source software tool used to extract text from an image. It is asked to turn these images into a text file, which is the most resource-intensive part of the program. This is why the images were edited in the previous step. All text is then compared to itself using string likeness to account for inaccuracies. If something is found twice, it gets marked as a duplicate in another text file. Then another comparison is made if the user has specific aspects they are looking for, and these are saved to a file as well.

>* You take 31.5% [22.5 - 37.5]% less
damage from Crowd Controlled
enemies. Whenever a Crowd
Controlled enemy deals direct
damage to you, gain 15%[+]
Movement Speed for 2 seconds.
(Rogue Only)

Back to AutoHotkey, using these text files, all marked items get a GUI element written on top of them displaying if it’s a wanted aspect, and/or a duplicate.

![Result](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/stashres.png)

## Demo
![Demo](https://github.com/Macco00/Diablo4-Stash-OCR-Analyzer/blob/main/stashdemo-speed.gif)




