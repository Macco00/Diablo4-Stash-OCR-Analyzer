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



text0 := FileOpen("C:\Users\marcu\Desktop\diablo\py\images\bannerText\dupsPos.txt", "r") ; og and dups pos [OG \n Dups \n OG \n Dups ....]

d := text0.ReadLine() ; og and dups

; Arrays
dups := []

; Read all dups lines from the file and add them to myArray
while (d != "") {
	dups.Push(d)
	d := text0.ReadLine()
}

; fix order of output og dups file
i := 1
while i < dups.Length
{
	og := dups[i]
	dup := dups[i+1]
	pos := i+2
	while pos < dups.Length
	{
		if(dup = dups[pos])
		{
			;MsgBox (dups[pos] . " = " . dup . " => " . og)
			dups[pos] := og
		}
		pos := pos + 2
	}
	i := i + 1	
}

myGui := Gui()
myGui.Title := "stash"
name := myGui.Title
myGui.BackColor := "000000"
WinSetTransColor("000000", myGui)

stashGrid := getGrid(w, h)
drawTextBack(myGui, stashGrid, offsetBack, textWidth, textHeight, dups)
drawRectangles(myGui, stashGrid, pic, dups)
drawPos(myGui, stashGrid, offsetX, offsetY, dups, res)

nameW := "stash"
showStash(myGui, name, res)

enableHide(myGui, stashGrid, minY, maxY, w, x, nameW, res)
