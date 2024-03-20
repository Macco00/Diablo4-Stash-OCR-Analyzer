
	fileName := 5 . ".txt"
	text := FileOpen("C:\Users\marcu\Desktop\diablo\py\images\marked\banner\affixes\" . fileName, "r") ; affixes
	outputDir := "C:\Users\marcu\Desktop\diablo\py\images\marked\banner\affixes\affixesInfo\" 
	outputFile :=  outputDir . fileName
	
	
	affixes := []
	;allText := ""
	givenAff := []
	maxAff := []
	textStart := []
	textEnd := []
	
	infoArray := [1, 2]
	
	typeItem := text.ReadLine()
	allText := typeItem
	
	rl := text.ReadLine()
	nxt := text.ReadLine()
	
	; removes new lines from text
	Loop 30
	{
		if(StrLen(rl) = 0)
		{
			rl := nxt
			nxt := text.ReadLine()
		}
		if(StrLen(nxt) = 0)
			nxt := text.ReadLine()
			
		;MsgBox rl . " || " . nxt 
		
		if (InStr(nxt, "%",, StrLen(nxt) - 2) != 0 || InStr(nxt, "]",, StrLen(nxt) - 2) != 0 || InStr(nxt, "1",, StrLen(nxt) - 2) !=0) ; if symbol exists
		{
			if(InStr(rl, "%",, StrLen(rl) - 2) = 0 || InStr(rl, "]",, StrLen(rl) - 2) = 0 || InStr(rl, "1",, StrLen(rl) - 2) = 0) ; if symbol does not exists
			{
				allText := allText . "`n" . rl . " " . nxt		
				rl := text.ReadLine()
				nxt := text.ReadLine()
			}
			else
			{
				allText := allText . "`n" . rl . "`n" . nxt	
				rl := text.ReadLine()
				nxt := text.ReadLine()
			}

		}

		else if (InStr(rl, "%",, StrLen(rl) - 2) != 0 || InStr(rl, "]",, StrLen(rl) - 2) != 0 || InStr(rl, "1",, StrLen(rl) - 2) != 0)
		{
			allText := allText . "`n" . rl
			rl := nxt
			nxt := text.ReadLine()
		}
		else
		{
			;MsgBox "something"
			;allText := allText . "`n" . nxt
			;rl := text.ReadLine()
			;nxt := text.ReadLine()
		}
	}
	
	pos := 2
	lastPos := 1
	;MsgBox allText
	; Extract all affixes and append to array
	while(true)
	{
		pos := InStr(allText, "`n",, pos)
		if(lastPos = 1)
			info := SubStr(allText, lastPos, pos - 1)
		else
			info := SubStr(allText, lastPos, pos - lastPos)
		
		if pos = 0
		{
			info := SubStr(allText, lastPos, StrLen(allText) - lastPos + 1)
			affixes.Push(info)
			break
		}
		affixes.Push(info)
		lastPos := pos + 1
		;MsgBox "|" . info . "|"
			
		pos := pos + 1
		
	}

	
	; Read max value from info affix and fix broken ocr if needed 
	i := 2
	while i <= affixes.Length
	{
		len := StrLen(affixes[i])

		charOnlyClass := InStr(affixes[i], "(",, 5)
		if CharOnlyClass != 0
		{
			affixes[i] := SubStr(affixes[i], 1, charOnlyClass - 1)
		}
		;MsgBox affixes[i]
		
		comp1 := InStr(affixes[i], "[",, 1)
		comp2 := InStr(affixes[i], "]",, 1)
		if comp1 != 0
			perc := InStr(affixes[i], "%",, comp1)
		;MsgBox comp1 . " " . comp2
		
		if(comp2 = 0)
		{
			if (perc = 0)
			{
				res := SubStr(affixes[i], comp1 + 1, StrLen(affixes[i]) - 1 - comp1)
			}
			else
				res := SubStr(affixes[i], comp1 + 1, StrLen(affixes[i]) - 2 - comp1)
		}
		else
		{
			res := SubStr(affixes[i], comp1 + 1, comp2 - 1 - comp1)
		}
		
		pos := InStr(res, "-",, 1)
		len := StrLen(res)
		if pos >= 1
			res := SubStr(res, pos + 1, len - pos)
		pos := InStr(res, " ",,1)
		if pos = 1
			res := SubStr(res, 2, len)
		
		maxAff.Push(res)
		textEnd.Push(comp1 - 1)
		;MsgBox res . "|"
		
		i := i + 1
	}
	;maxAff.Push("")
	
	; Read starting value of affix
	i := 2
	while i <= affixes.Length
	{	
		comp1 := InStr(affixes[i], "+",, 1)
		comp2 := InStr(affixes[i], " ",, 1)
		perc := InStr(affixes[i], "%",, 1)
		;MsgBox affixes[i]
		
		if comp1 = 0 && perc < 9 && perc != 0
			res := SubStr(affixes[i], 1, perc - 2)
		else if comp1 = 0
			res := SubStr(affixes[i], 1, comp2 - 1)
		else if perc < 9 && perc != 0
			res := SubStr(affixes[i], comp1 + 1, perc - 2)
		else
			res := SubStr(affixes[i], comp1 + 1, comp2 - 2)
		givenAff.Push(res)
		

		textStart.Push(comp2 + 1)
		i := i + 1
	}
	;givenAff.Push("")
	
	if givenAff.Length != maxAff.Length
		MsgBox "Error: Arrays of differnet size!"
	
	i := 2
	FileAppend affixes[1] . "`n", outputFile
	while i <= affixes.Length
	{
		removeEnd := InStr(affixes[i], "[",, 1)
		removeEnd := StrLen(affixes[i]) - removeEnd
		teststring := SubStr(affixes[i], textStart[i-1], textEnd[i-1] - textStart[i-1])
		;MsgBox "|" . givenAff[i-1] . "|" . maxAff[i-1] . "|"
		FileAppend givenAff[i-1] . ", " . teststring . ", " . maxAff[i-1] . "`n", outputFile

		i := i + 1
	}
	
	
	
	