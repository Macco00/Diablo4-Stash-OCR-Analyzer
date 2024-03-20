#SingleInstance Force

getGrid(w,h)
{
	
stashGrid := [[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1],
[1,1]]

i := 1
posCol := 1
posRow := 1

	Loop 50
	{
		newX := w * posCol
		if newX >= w * 10 + 1
		{
			posCol := 1
			newX := w * posCol
			posRow := posRow + 1
		}
		newY := h * posRow
	
		stashGrid[i][1] := newX
		stashGrid[i][2] := newY
		posCol := posCol + 1
		i := i + 1
	}
	return stashGrid
}

drawTextBack(myGui, stashGrid, offsetBack, textWidth, textHeight, dups)
{
	i := 1
	; Draw text background
	Loop 50
	{
		pos := dups[i]
		intX := Round(stashGrid[pos][1], 0)
		intY := Round(stashGrid[pos][2], 0) + offsetBack
		picX := "x" intX
		picY := "y" intY
		color := "Backgroundf5290e"
		wid := "w" textWidth
		hei := "h" textHeight
		posFin := picX " " picY " " wid " " hei " " color
		myGui.Add("Progress", posFin, 0)
		
		i := i + 1
		if(i > dups.Length)
			return
	}
}


drawAspectBack(myGui, stashGrid, offsetBack, textWidth, textHeight, lookingFor)
{
	i := 1
	; Draw text background for aspects
	Loop 50
	{
		pos := lookingFor[i]
		intX := Round(stashGrid[pos][1], 0)
		intY := Round(stashGrid[pos][2], 0) + offsetBack * 15.5
		picX := "x" intX
		picY := "y" intY
		color := "Backgroundf5290e"
		wid := "w" textWidth
		hei := "h" textHeight*1.5
		posFin := picX " " picY " " wid " " hei " " color
		myGui.Add("Progress", posFin, 0)
		i := i + 1
		if(i > lookingFor.Length)
			return
	}
}

drawKeepBack(myGui, stashGrid, offsetBack, textWidth, textHeight)
{
	i := 1
	; Draw text background for stuff to keep
	Loop 50
	{
		intX := Round(stashGrid[i][1], 0)
		intY := Round(stashGrid[i][2], 0) + offsetBack * 130.5
		picX := "x" intX
		picY := "y" intY
		color := "Backgroundf5290e"
		wid := "w" textWidth
		hei := "h" textHeight
		posFin := picX " " picY " " wid " " hei " " color
		myGui.Add("Progress", posFin, 0)
		i := i + 1
	}
}


drawPos(myGui, stashGrid, offsetX, offsetY, dups,res)
{
	i := 1 
	; draw text for pos
	if res = 1
		myGui.SetFont("s12 w700 q2")
	else
		myGui.SetFont("s9 w700 q2")
	Loop 50 
	{
		pos := dups[i]
		if (Mod(i, 2) = 0)
			intX := Round(stashGrid[pos][1], 0) + offsetX/3
		else
			intX := Round(stashGrid[pos][1], 0) + offsetX
		intY := Round(stashGrid[pos][2], 0) + offsetY
		picX := "x" intX
		picY := "y" intY
		color := "cWhite"
		trans := "BackgroundTrans"
		posFin := picX " " picY " " color " " trans

		if (Mod(i, 2) = 0 && dups[i-1] < 10)
			myGui.Add("Text", posFin, " DUP" . dups[i-1])
		else if (Mod(i, 2) = 0)
			myGui.Add("Text", posFin, "DUP" . dups[i-1])
		else if (Mod(i, 2) != 0 && dups[i] < 10)
			myGui.Add("Text", posFin, " " . dups[i])
		else if (Mod(i, 2) != 0)
			myGui.Add("Text", posFin, dups[i])
		i := i + 1
		
		if(i > dups.Length)
			return
	}
}


drawAspects(myGui, stashGrid, offsetX, offsetY, lookingFor, nameWindAsp, res)
{
	i := 1
	; draw text for aspects
	if res = 1
		myGui.SetFont("s8")
	else
		myGui.SetFont("s6.5")
	myGui.SetFont("w600")
	Loop 50 
	{
		pos := lookingFor[i]
		intX := Round(stashGrid[pos][1], 0) + offsetX * 0.2
		intY := Round(stashGrid[pos][2], 0) + offsetY * 25.5
		
		picX := "x" intX
		picY := "y" intY
		color := "cWhite"
		trans := "BackgroundTrans"
		posFin := picX " " picY " " color " " trans
		
		if(InStr(nameWindAsp[i], " ") > 0)
		{
			intX := Round(stashGrid[pos][1], 0) + offsetX * 0.2
			intY := Round(stashGrid[pos][2], 0) + offsetY * 23
			picX := "x" intX
			picY := "y" intY
			color := "cWhite"
			trans := "BackgroundTrans"
			posFin := picX " " picY " " color " " trans
			
			spacePos := InStr(nameWindAsp[i], " ")
			nameWind1 := SubStr(nameWindAsp[i], 1, spacePos - 1)
			nameWind2 := SubStr(nameWindAsp[i], spacePos + 1, StrLen(nameWindAsp[i]))
			myGui.Add("Text", posFin, nameWind1)
			intY := Round(stashGrid[pos][2], 0) + offsetY * 25.5
			picY := "y" intY
			posFin := picX " " picY " " color " " trans
			myGui.Add("Text", posFin, nameWind2)
		}
		else
			myGui.Add("Text", posFin, nameWindAsp[i])
		i := i + 1
		if(i > lookingFor.Length)
			return
	}
}


drawKeep(myGui, stashGrid, offsetX, offsetY)
{
	i := 1
	; draw text for keep
	if res = 1
		myGui.SetFont("s8")
	else
		myGui.SetFont("s6.5")
	myGui.SetFont("w600")
	Loop 50 
	{
		intX := Round(stashGrid[i][1], 0) + offsetX * 0.9
		intY := Round(stashGrid[i][2], 0) + offsetY * 15.5
		picX := "x" intX
		picY := "y" intY
		color := "cWhite"
		trans := "BackgroundTrans"
		posFin := picX " " picY " " color " " trans

		myGui.Add("Text", posFin, "KEEP")
		i := i + 1
	}
}

drawRectangles(myGui, stashGrid, pic, dups)
{
	i := 1
	; if empty
	if(dups[i] = "")
		return

	; Draw rectangles
	Loop 50
	{
		if(dups[i] != "")
		{
			pos := dups[i]
			;MsgBox dups[i]
			picX := "x" Round(stashGrid[pos][1], 0)
			picY := "y" Round(stashGrid[pos][2], 0)
			trans := "BackgroundTrans"
			posFin := picX " " picY " " trans
			myGui.Add("Picture", posFin, pic)		
		}
		i := i + 1
		if(i > dups.Length)
			return
			
		
	}
}


enableHide(myGui, stashGrid, minY, maxY, w, x, nameWind, res)
{
	; dont hide window if slot is empty
	numFiles := 0
	folder := A_WorkingDir . "\py\images\bannerText\*.png"
	Loop Files folder
		numFiles := numFiles + 1
	modY := stashGrid[numFiles][2] + minY
	
	prev := "false"
	SetWinDelay 50
	
	if res = 1
	{
		xp := 382
		yp := 232
		ww := 1000
		hw := 800
	}
	else
	{
		xp := -13
		yp := 173
		ww := 750
		hw := 600
	}

	while WinExist(nameWind)
	{
		MouseGetPos &xpos, &ypos
		if(ypos > modY - stashGrid[1][2] && xpos > stashGrid[numFiles][1] + x && prev = "true")
		{
			WinMove xp, yp, ww, hw, nameWind
		}
		
		else if ypos > minY && ypos < modY && xpos > x && xpos < Round(stashGrid[10][1]) + x
		{
			if xpos > x && xpos < Round(stashGrid[1][1]) + x
				WinMove xp, yp, ww - w * 10 - 7, hw, nameWind
			if xpos > Round(stashGrid[1][1]) + x && xpos < Round(stashGrid[2][1]) + x
				WinMove xp, yp, ww - w * 9 - 7, hw, nameWind
			if xpos > Round(stashGrid[2][1]) + x && xpos < Round(stashGrid[3][1]) + x
				WinMove xp, yp, ww - w * 8 - 7, hw, nameWind
			if xpos > Round(stashGrid[3][1]) + x && xpos < Round(stashGrid[4][1]) + x
				WinMove xp, yp, ww - w * 7 - 7, hw, nameWind
			if xpos > Round(stashGrid[4][1]) + x && xpos < Round(stashGrid[5][1]) + x
				WinMove xp, yp, ww - w * 6 - 7, hw, nameWind
			if xpos > Round(stashGrid[5][1]) + x && xpos < Round(stashGrid[6][1]) + x
				WinMove xp, yp, ww - w * 5 - 7, hw, nameWind
			if xpos > Round(stashGrid[6][1]) + x && xpos < Round(stashGrid[7][1]) + x
				WinMove xp, yp, ww - w * 4 - 7, hw, nameWind
			if xpos > Round(stashGrid[7][1]) + x && xpos < Round(stashGrid[8][1]) + x
				WinMove xp, yp, ww - w * 3 - 7, hw, nameWind
			if xpos > Round(stashGrid[8][1]) + x && xpos < Round(stashGrid[9][1]) + x
				WinMove xp, yp, ww - w * 2 - 7, hw, nameWind
			if xpos > Round(stashGrid[9][1]) + x && xpos < Round(stashGrid[10][1]) + x
				WinMove xp, yp, ww - w * 1 - 7, hw, nameWind
			prev := "true"
		}

		else if prev = "true"
		{
			WinMove xp, yp, ww, hw, nameWind
			prev := "false"
		}
	}
	SetWinDelay 100
}

showStash(myGui, nameWind, res)
{
	myGui.Show("w1000 h800")
	WinSetAlwaysOnTop 1, nameWind
	WinSetExStyle "+0x20", nameWind
	WinSetStyle -0xc40000, nameWind
	if res = 1
		myGui.Move(382, 232)
	else
		myGui.Move(-13, 173)
	return
}

