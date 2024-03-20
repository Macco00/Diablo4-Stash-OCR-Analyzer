#include drawStash.ahk
dirIni := A_WorkingDir . "\aspects.ini"
res := IniRead(dirIni, "OPTIONS", "Resolution")

if res = 1 ; 5120x1440
{
	x := 463
	y := 361
	w := 81.5
	h := 130

	minY := 361 ; used to resize window as to not block in game item info
	maxY := 1000

	textHeight := 16 ; text background height
	textWidth := 75 ; text background width
	offsetBack := 6 ; text background offset on y axis

	offsetX := 26 ; text offset
	offsetY := 4 ; text offset
	pic := "C:\Users\marcu\Desktop\diablo\pixil-frame-0(1).png"
}

else ; 1920x1080
{
	x := 44
	y := 268
	w := 61
	h := 98

	minY := y ; used to resize window as to not block in game item info
	maxY := 755

	textHeight := 16 ; text background height
	textWidth := 75 ; text background width
	offsetBack := 6 ; text background offset on y axis

	offsetX := 26 ; text offset
	offsetY := 4 ; text offset
	pic := "C:\Users\marcu\Desktop\diablo\pixil-frame-0(6).png"
}

text1 := FileOpen("C:\Users\marcu\Desktop\diablo\py\images\bannerText\aspectPos.txt", "r") ; aspect pos
text3 := FileOpen("C:\Users\marcu\Desktop\diablo\py\images\bannerText\aspectNames.txt", "r") ; aspect names with corresponding lines for aspect pos file
lf := text1.ReadLine() ; looking for (aspect pos)
se := text3.ReadLine() ; aspect name

; Arrays
lookingFor := []
nameAspect := []

; Read all "lf" lines from the file and add them to myArray
while (lf != "") {
    lookingFor.Push(lf)
	lf := text1.ReadLine()
}

; Read all found aspects lines from the file and add them to myArray2
while (se != "") {
    nameAspect.Push(se)
	se := text3.ReadLine()
}

myGui := Gui()
myGui.Title := "stash"
name := myGui.Title
myGui.BackColor := "000000"
WinSetTransColor("000000", myGui)

stashGrid := getGrid(w, h)
drawAspectBack(myGui, stashGrid, offsetBack, textWidth, textHeight, lookingFor)
drawAspects(myGui, stashGrid, offsetX, offsetY, lookingFor, nameAspect, res)

nameW := "stash"
showStash(myGui, name, res)
enableHide(myGui, stashGrid, minY, maxY, w, x, nameW, res)
