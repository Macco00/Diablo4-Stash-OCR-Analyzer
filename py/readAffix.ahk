#include affixes.ahk

basicArray := makeBasicArray()
classArray := makeClassArray()
lookingFor := makeLookingForArray()
threshold := 0.9 ; 90%
showOnly := 2 ; minimum number of affixes above or equal threshold

loopDir := A_WorkingDir . "\images\marked\banner\affixes\*.txt"

sourceDir := A_WorkingDir . "\images\marked\banner\affixes\affixesInfo\"
loopSource := A_WorkingDir . "\images\marked\banner\affixes\affixesInfo\*.txt"
outputDir := A_WorkingDir . "\images\marked\banner\affixes\affixesInfo\affixesRes\"

i := 1
Loop Files loopDir
{
	;MsgBox i
	affixes(i)
	
	i := i + 1
}

sleep 2000
resultArray := []

z := 1
textArr := []

Loop Files loopSource
{
	fileName := z . ".txt"
	text := FileOpen(sourceDir . fileName, "r")
	textArr := readFile(text)
	count := 0
	countLF := 
	;MsgBox z
	i := 2
	
	while (i <= textArr.Length)
	{
		seperator := InStr(textArr[i], ", ",, 1)
		seperator2 := InStr(textArr[i], ", ",, -1)
		typeSeperator := InStr(textArr[i], "`n",, 1)
		givenType := textArr[1]
		givenValue := SubStr(textArr[i], 1, seperator - 1)
		givenMax := SubStr(textArr[i], seperator2 + 2, StrLen(textArr[i]) - seperator2)
		givenText := SubStr(textArr[i], seperator + 2, StrLen(textArr[i])-seperator-seperator2)
		
		difference := givenValue / givenMax
		;MsgBox givenValue . " / " . givenMax . " = " . difference
		if difference >= threshold
		{
			n := 1
			while n <= lookingFor.Length
			{
				if givenText = lookingFor[i][1] && givenType = lookingFor[i][2]
					countLF := countLF + 1
				n := n + 1
			}
			count := count + 1
		}
			
	
		j := 1000
		while (j <= basicArray.Length)
		{
			if basicArray[j][2] = givenText
				if InStr(basicArray[j][3], givenType,, 1) > 1
				{
					typePos := InStr(basicArray[j][3], givenType,, 1)
					typeLen := StrLen(givenType)
					;MsgBox givenText . " = " . basicArray[j][2] . " | " . givenType . " = " . SubStr(basicArray[j][3], typePos, typeLen)
					difference := basicArray[j][1] / givenValue
					if difference <= threshold
						count := count + 1
				}
					
			j := j + 1
		}
		k := 1000
		while (k <= classArray.Length)
		{
			if classArray[k][2] = givenText
			{
				;MsgBox givenText . " = " . classArray[k][2]
				difference := classArray[k][1] / givenValue
				if difference <= threshold
					count := count + 1
			}
				
			k := k + 1
		}
		i := i + 1
	}
	res := [z, count, countLF]
	resultArray.Push(res)
	z := z + 1
}

i := 1
nameFile := outputDir . "res.txt"
while i <= resultArray.Length
{
	appendPos := resultArray[i][1]
	appendCount := resultArray[i][2]
	appendCountLF := resultArray[i][3]
	
	if(appendCount >= showOnly)
		FileAppend(appendPos . ", " . appendCount . ", " . "`n", nameFile)
	i := i + 1
}

readFile(text)
{
	myArray := []
	rl := text.ReadLine()
	while StrLen(rl) != 0
	{
		myArray.Push(rl)
		rl := text.ReadLine()
	}
	return myArray
}

makeLookingForArray()
{
	lookingFor1 := [
			["Critical Strike Damage", "Two-Handed"],
			["Vulnerable Damage", "Two-Handed"],
			["Strength", "Two-Handed"],
			["Damage to Close Enemies", "Two-Handed"],
			["Core Skill Damage", "Two-Handed"],
			["Damage to Slowed Enemies", "Two-Handed"],
			;--------------------------
			["Critical Strike Damage", "Sword"],
			["Vulnerable Damage", "Sword"],
			["Strength", "Sword"],
			["Damage to Close Enemies", "Sword"],
			["Core Skill Damage", "Sword"],
			["Damage to Slowed Enemies", "Sword"],
			;--------------------------
			["Critical Strike Damage", "Two-Handed"],
			["All Stats", "Two-Handed"],
			["Maximum Life", "Two-Handed"],
			["Damage", "Two-Handed"],
			["Damage to Slowed Enemies", "Two-Handed"],
			;--------------------------
			["Cooldown Reduction", "Helm"],
			["Maximum Life", "Helm"],
			["Total Armor", "Helm"],
			["All Stats", "Helm"],
			;--------------------------
			["Ranks to Challenging Shout", "Chest"],
			["Damage Reduction against Close Enemies", "Chest"],
			["Damage Reduction while Fortified", "Chest"],
			["Maximum Life", "Chest"],
			["Total Armor", "Chest"],
			["Strength", "Chest"],
			;--------------------------
			["Ranks to Whirlwind", "Gloves"],
			["Critical Strike Chance", "Gloves"],
			["Strength", "Gloves"],
			["Critical Strike Chance to Injured", "Gloves"],
			;--------------------------
			["Damage Reduction against Close Enemies", "Pants"],
			["Damage Reduction while Fortified", "Pants"],
			["Damage Reduction against Bleeding Enemies", "Pants"],
			["Damage Reduction from Distant Enemies", "Pants"],
			["Maximum Life", "Pants"],
			["Total Armor", "Pants"],
			["Strength", "Pants"],
			;--------------------------
			["Movement Speed", "Boots"],
			["Fury Cost Reduction", "Boots"],
			["Strength", "Boots"],
			["Movement Speed after Elite Kill", "Boots"],
			["Fortify Generation", "Boots"],
			;--------------------------
			["Cooldown Reduction", "Amulet"],
			["Fury Cost Reduction", "Amulet"],
			["Ranks of All Defensive Skills", "Amulet"],
			["Ranks of Heavy Handed", "Amulet"],
			;--------------------------
			["Resource Generation", "Rings"],
			["Critical Strike Damage", "Rings"],
			["Vulnerable Damage", "Rings"],
			["Critical Strike Chance", "Rings"],
			["Maximum Fury", "Rings"]
		]
		return lookingFor1
			
}

makeBasicArray()
{	
	basicArray1 := [
		[0.42, "Thorns","Shield"],
		[0.28, "Thorns","Amulet, Chest Armor, Pants"],
		[42, "Dexterity","Boots, Chest Armor, Totem, Focus, Focus, Gloves, Helm, Pants, Shield"],
		[63, "Dexterity","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[42, "Intelligence","Boots, Chest Armor, Totem, Focus, Focus, Gloves, Helm, Pants, Shield"],
		[63, "Intelligence","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[42, "Strength","Boots, Chest Armor, Totem, Focus, Focus, Gloves, Helm, Pants, Shield"],
		[63, "Strength","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[42, "Willpower","Boots, Chest Armor, Totem, Focus, Focus, Gloves, Helm, Pants, Shield"],
		[63, "Willpower","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[12, "Maximum Energy","Ring"],
		[18, "Maximum Energy","Helm"],
		[12, "Maximum Essence","Ring"],
		[18, "Maximum Essence","Helm"],
		[12, "Maximum Fury","Ring"],
		[18, "Maximum Fury","Helm"],
		[0.26, "Maximum Life","Chest Armor, Helm, Pants, Ring, Shield"],
		[12, "Maximum Mana","Ring"],
		[18, "Maximum Mana","Helm"],
		[0.048, "Life On Kill","Totem, Focus, Focus, Helm, Shield"],
		[12, "Maximum Spirit","Ring"],
		[18, "Maximum Spirit","Helm"],
		[18, "All Stats","Boots, Chest Armor, Totem, Focus, Focus, Gloves, Helm, Pants, Shield"],
		[28, "All Stats","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[0.315, "Lucky Hit: Up to a 5% Chance to Heal X Life","Totem, Focus, Focus, Gloves, Shield"], ;edge case
		[2, "Reduces the Arm Time of Your Trap Skills by X Seconds","Amulet, Gloves"], ;edge case
		; ------percentages--------
		[10, "Damage","Amulet, Chest Armor"],
		[14, "Total Armor while in Werebear Form","Amulet, Boots"],
		[14, "Total Armor while in Werewolf Form","Amulet, Pants"],
		[7.3, "Total Armor","Amulet, Chest Armor, Helm, Pants"],
		[14, "Minion Attack Speed","Amulet, Shield"],
		[12, "Shrine Buff Duration","Boots"],
		[16.5, "Shrine Buff Duration","Amulet"],
		[3, "Potion Capacity","Pants"],
		[8.6, "Dodge Chance Against Close Enemies","Pants"],
		[10.5, "Dodge Chance Against Distant Enemies","Boots"],
		[5.8, "Dodge Chance","Boots, Pants"],
		[12, "Crowd Control Duration","Amulet, Totem, Focus, Focus, Helm, Shield"],
		[7, "Energy Cost Reduction","Boots"],
		[16.5, "Energy Cost Reduction","Amulet"],
		[7, "Essence Cost Reduction","Boots"],
		[16.5, "Essence Cost Reduction","Amulet"],
		[7, "Fury Cost Reduction","Boots"],
		[16.5, "Fury Cost Reduction","Amulet"],
		[7, "Mana Cost Reduction","Boots"],
		[16.5, "Mana Cost Reduction","Amulet"],
		[7, "Spirit Cost Reduction","Boots"],
		[16.5, "Spirit Cost Reduction","Amulet"],
		[21, "Lightning Critical Strike Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Fire Damage Over Time","Amulet, Gloves"],
		[14, "Overpower Damage with Two-Handed Bludgeoning Weapons","Amulet, Chest Armor"],
		[42, "Overpower Damage with Werebear Skills","Amulet, Axe, Two-Handed Axe, Bow, Chest Armor, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Physical Damage Over Time","Amulet, Gloves"],
		[14, "Shadow Damage Over Time","Amulet, Gloves"],
		[14, "Cold Damage","Chest Armor, Ring"],
		[14, "Fire Damage","Chest Armor, Ring"],
		[14, "Lightning Damage","Chest Armor, Ring"],
		[14, "Physical Damage","Chest Armor, Ring"],
		[14, "Poison Damage","Chest Armor, Ring"],
		[14, "Shadow Damage","Chest Armor, Ring"],
		[23.5, "Vulnerable Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[28, "Overpower Damage","Ring"],
		[42, "Overpower Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[26, "Potion Drop Rate","Pants"],
		[20, "Slow Duration Reduction","Amulet, Boots"],
		[21, "Berserking Duration","Amulet, Boots, Pants"],
		[28, "Crackling Energy Damage","Boots, Totem, Focus, Focus, Pants, Ring, Shield"],
		[12, "Resource Generation","Totem, Focus, Focus, Ring, Shield"],
		[14, "Barrier Generation","Chest Armor, Totem, Focus, Focus, Helm, Ring, Shield"],
		[22, "Fortify Generation","Boots, Chest Armor, Totem, Focus, Focus, Ring, Shield"],
		[6, "Lucky Hit Chance","Totem, Focus, Focus, Ring, Shield"],
		[11, "Lucky Hit Chance","Gloves"],
		[7, "Lucky Hit Chance while You Have a Barrier","Amulet, Totem, Focus, Focus, Shield"],
		[12, "Lucky Hit Chance while You Have a Barrier","Helm"],
		[12, "Control Impaired Duration Reduction","Amulet, Chest Armor"],
		[21, "Weapon Mastery Skill Damage","Amulet, Chest Armor"],
		[31.5, "Maximum Minion Life","Chest Armor, Totem, Focus, Focus, Pants, Ring, Shield"],
		[17.5, "Blood Orb Healing","Boots, Totem, Focus, Focus, Pants, Ring, Shield"],
		[14, "Damage Over Time","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage Reduction from Enemies That Are Affected By Shadow Damage Over Time","Amulet, Chest Armor, Totem, Focus, Focus, Pants, Shield"],
		[14, "Damage Reduction from Enemies That Are Bleeding","Amulet, Chest Armor, Totem, Focus, Focus, Pants, Shield"],
		[14, "Damage Reduction from Enemies That Are Burning","Amulet, Chest Armor, Totem, Focus, Focus, Pants, Shield"],
		[14, "Damage Reduction from Enemies That Are Poisoned","Amulet, Chest Armor, Totem, Focus, Focus, Pants, Shield"],
		[14, "Damage Reduction while Fortified","Amulet, Chest Armor, Totem, Focus, Focus, Pants, Shield"],
		[16.5, "Damage Reduction from Close Enemies","Amulet, Chest Armor, Pants, Shield"],
		[20, "Damage Reduction from Distant Enemies","Amulet, Chest Armor, Pants, Shield"],
		[31.5, "Damage Reduction while Injured","Amulet, Boots, Pants"],
		[7.3, "Damage Reduction","Amulet, Chest Armor, Pants, Shield"],
		[10, "Cooldown Reduction","Amulet, Totem, Focus, Focus, Helm, Shield"],
		[0.048, "Life Regeneration while Not Damaged Recently","Helm, Pants, Ring, Shield"],
		[45.5, "Cold Resistance","Boots, Chest Armor, Helm"],
		[45.5, "Fire Resistance","Boots, Chest Armor, Helm"],
		[45.5, "Lightning Resistance","Boots, Chest Armor, Helm"],
		[45.5, "Poison Resistance","Boots, Chest Armor, Helm"],
		[45.5, "Shadow Resistance","Boots, Chest Armor, Helm"],
		[10, "Basic Skill Attack Speed","Totem, Focus, Focus, Helm, Shield"],
		[10, "Imbuement Skill Cooldown Reduction","Amulet, Pants"],
		[10, "Storm Skill Cooldown Reduction","Amulet, Chest Armor"],
		[10, "Trap Skill Cooldown Reduction","Amulet, Gloves"],
		[14, "Blood Skill Damage","Amulet, Chest Armor"],
		[14, "Bone Skill Damage","Amulet, Chest Armor"],
		[14, "Cutthroat Skill Damage","Amulet, Chest Armor"],
		[14, "Darkness Skill Damage","Amulet, Chest Armor"],
		[14, "Earth Skill Damage","Amulet, Chest Armor"],
		[14, "Frost Skill Damage","Amulet, Chest Armor"],
		[14, "Imbued Skill Damage","Chest Armor, Ring"],
		[14, "Marksman Skill Damage","Amulet, Chest Armor"],
		[14, "Pyromancy Skill Damage","Amulet, Chest Armor"],
		[14, "Shock Skill Damage","Amulet, Chest Armor"],
		[14, "Storm Skill Damage","Amulet, Chest Armor"],
		[14, "Summoning Skill Damage","Amulet, Chest Armor"],
		[14, "Werebear Skill Damage","Amulet, Chest Armor"],
		[14, "Werewolf Skill Damage","Amulet, Chest Armor"],
		[19.5, "Core Skill Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[21, "Brawling Skill Damage","Amulet, Chest Armor"],
		[21, "Companion Skill Damage","Amulet, Chest Armor"],
		[21, "Conjuration Skill Damage","Amulet, Chest Armor"],
		[21, "Imbuement Skill Damage","Amulet, Chest Armor"],
		[21, "Trap Skill Damage","Amulet, Chest Armor"],
		[21, "Ultimate Skill Damage","Amulet, Axe, Two-Handed Axe, Bow, Chest Armor, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[39.5, "Basic Skill Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Totem, Focus, Focus, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Shield, Staff, Sword, Two-Handed Sword, Wand"],
		[10, "Attack Speed","Gloves"],
		[17.5, "Movement Speed","Amulet, Boots"],
		[5, "Critical Strike Chance","Totem, Focus, Focus, Ring, Shield"],
		[8, "Critical Strike Chance","Gloves"],
		[8, "Critical Strike Chance Against Injured Enemies","Amulet"],
		[12, "Critical Strike Chance Against Injured Enemies","Totem, Focus, Focus, Gloves, Shield"],
		[21, "Critical Strike Damage with Bone Skills","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[21, "Critical Strike Damage with Earth Skills","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[21, "Critical Strike Damage with Imbued Skills","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[21, "Critical Strike Damage with Werewolf Skills","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[21, "Critical Strike Damage","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Affected By Shadow Damage Over Time Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Bleeding Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Burning Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Chilled Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Enemies Affected by Trap Skills","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Freeze Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage to Poisoned Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[16.5, "Damage to Crowd Controlled Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[23.5, "Damage to Bleeding Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[23.5, "Damage to Close Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[23.5, "Damage to Daze Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[23.5, "Damage to Distant Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[23.5, "Damage to Stun Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[35, "Damage to Injured Enemies","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Gloves, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage while Berserking","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Helm, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Ring, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Damage while in Human","Amulet, Chest Armor"],
		[14, "Damage while Shapeshifted","Amulet, Chest Armor"],
		[14, "Damage with Dual-Wielded Weapons","Amulet, Chest Armor"],
		[14, "Damage with Ranged Weapons","Amulet, Chest Armor"],
		[14, "Damage with Two-Handed Bludgeoning Weapons","Amulet, Chest Armor"],
		[14, "Damage with Two-Handed Slashing Weapons","Amulet, Chest Armor"],
		[28, "Damage with Skills that Swap to New Weapons","Amulet, Chest Armor"],
		[7, "Golem Inherit X of Your Thorns","Pants, Ring"],
		[7, "Mages Inherit X of Your Thorns","Helm, Ring"],
		[7, "Warriors Inherit X of Your Thorns","Gloves, Ring"],
		[10, "Lucky Hit: Up to a X Chance to Execute Injured Non-Elites","Axe, Two-Handed Axe, Bow, Hand Crossbow, Crossbow, Dagger, DaggerOffHand, Mace, Two-Handed Mace, Two-Handed Mace, Polearm, Scythe, Two-Handed Scythe, Staff, Sword, Two-Handed Sword, Wand"],
		[14, "Lucky Hit: Up to a 5% Chance to Restore X Primary Resource","Totem, Focus, Focus, Gloves, Shield"],
		[20, "Lucky Hit: Up to a X Chance to Slow","Totem, Focus, Focus, Gloves, Shield"],
	]
	return basicArray1
}

makeClassArray()
{
	classArray1 := [
		[7.3, "Dexterity"],
		[7.3, "Willpower"],
		[7.3, "Strength"],
		[7.3, "Intelligence"],
		[14, "Healing Received"],
		[2, "Ranks of the Outburst Passive"],
		[2, "Ranks of the Slaying Strike Passive"],
		[2, "Ranks of the Brute Force Passive"],
		[2, "Ranks of the Nature's Reach Passive"],
		[2, "Ranks of the Crushing Earth Passive"],
		[2, "Ranks of the Natural Disaster Passive"],
		[2, "Ranks of the Toxic Claws Passive"],
		[2, "Ranks of the Terror Passive"],
		[2, "Ranks of the Compound Fracture Passive"],
		[2, "Ranks of the Hellbent Commander Passive"],
		[2, "Ranks of the Deadly Venom Passive"],
		[2, "Ranks of the Malice Passive"],
		[2, "Ranks of the Hoarfrost Passive"],
		[2, "Ranks of the Icy Touch Passive"],
		[2, "Ranks of the Inner Flames Passive"],
		[2, "Ranks of the Shocking Impact Passive"],
		[3, "Ranks of Hammer of the Ancients"],
		[3, "Ranks of Upheaval"],
		[3, "Ranks of Charge"],
		[3, "Ranks of Iron Skin"],
		[3, "Ranks of Rallying Cry"],
		[3, "Ranks of War Cry"],
		[3, "Ranks of Landslide"],
		[3, "Ranks of Lightning Storm"],
		[3, "Ranks of Boulder"],
		[3, "Ranks of Earthen Bulwark"],
		[3, "Ranks of Ravens"],
		[3, "Ranks of Wolves"],
		[2, "Ranks of All Curse Skills"],
		[3, "Ranks of Blight"],
		[3, "Ranks of Blood Lance"],
		[3, "Ranks of Bone Spirit"],
		[3, "Ranks of Decrepify"],
		[2, "Ranks of All Imbuement Skills"],
		[3, "Ranks of Flurry"],
		[3, "Ranks of Penetrating Shot"],
		[3, "Ranks of Cold Imbuement"],
		[3, "Ranks of Dash"],
		[3, "Ranks of Shadow Step"],
		[2, "Ranks of All Mastery Skills"],
		[3, "Ranks of Chain Lightning"],
		[3, "Ranks of Frozen Orb"],
		[3, "Ranks of Firewall"],
		[3, "Ranks of Hydra"],
		[3, "Ranks of Lightning Spear"],
		[2, "Ranks of the Wallop Passive"],
		[2, "Ranks of the Cut to the Bone Passive"],
		[2, "Ranks of the No Mercy Passive"],
		[2, "Ranks of the Wild Impulses Passive"],
		[2, "Ranks of the Resonance Passive"],
		[2, "Ranks of the Call of the Wild Passive"],
		[2, "Ranks of the Gloom Passive"],
		[2, "Ranks of the Coalesced Blood Passive"],
		[2, "Ranks of the Tides of Blood Passive"],
		[2, "Ranks of the Amplify Damage Passive"],
		[2, "Ranks of the Exploit Passive"],
		[2, "Ranks of the Weapon Mastery Passive"],
		[2, "Ranks of the Conjuration Mastery Passive"],
		[2, "Ranks of the Glass Cannon Passive"],
		[2, "Ranks of the Endless Pyre Passive"],
		[2, "Ranks of All Brawling Skills"],
		[3, "Ranks of Rend"],
		[3, "Ranks of Whirlwind"],
		[3, "Ranks of Death Blow"],
		[3, "Ranks of Kick"],
		[3, "Ranks of Rupture"],
		[2, "Ranks of All Companion Skills"],
		[3, "Ranks of Pulverize"],
		[3, "Ranks of Shred"],
		[3, "Ranks of Cyclone Armor"],
		[3, "Ranks of Hurricane"],
		[3, "Ranks of Trample"],
		[2, "Ranks of All Defensive Skills"],
		[2, "Ranks of All Macabre Skills"],
		[3, "Ranks of Sever"],
		[3, "Ranks of Blood Mist"],
		[3, "Ranks of Corpse Explosion"],
		[3, "Ranks of Iron Maiden"],
		[2, "Ranks of All Subterfuge Skills"],
		[3, "Ranks of Barrage"],
		[3, "Ranks of Poison Imbuement"],
		[3, "Ranks of Concealment"],
		[3, "Ranks of Poison Trap"],
		[3, "Ranks of Smoke Grenade"],
		[3, "Ranks of Fireball"],
		[3, "Ranks of Charged Bolts"],
		[3, "Ranks of Ball Lightning"],
		[3, "Ranks of Flame Shield"],
		[3, "Ranks of Ice Armor"],
		[3, "Ranks of Meteor"],
		[2, "Ranks of the Counteroffensive Passive"],
		[2, "Ranks of the Heavy Handed Passive"],
		[2, "Ranks of the Tough as Nails Passive"],
		[2, "Ranks of the Stone Guard Passive"],
		[2, "Ranks of the Envenom Passive"],
		[2, "Ranks of the Defiance Passive"],
		[2, "Ranks of the Quickshift Passive"],
		[2, "Ranks of the Death's Reach Passive"],
		[2, "Ranks of the Imperfectly Balanced Passive"],
		[2, "Ranks of the Evulsion Passive"],
		[2, "Ranks of the Fueled by Death Passive"],
		[2, "Ranks of the Frigid Finesse Passive"],
		[2, "Ranks of the Impetus Passive"],
		[2, "Ranks of the Permafrost Passive"],
		[2, "Ranks of the Elemental Dominance Passive"],
		[2, "Ranks of the Devouring Blaze Passive"],
		[2, "Ranks of All Weapon Mastery Skills"],
		[3, "Ranks of Double Swing"],
		[3, "Ranks of Challenging Shout"],
		[3, "Ranks of Ground Stomp"],
		[3, "Ranks of Leap"],
		[3, "Ranks of Steel Grasp"],
		[2, "Ranks of All Wrath Skills"],
		[3, "Ranks of Tornado"],
		[3, "Ranks of Blood Howl"],
		[3, "Ranks of Debilitating Roar"],
		[3, "Ranks of Rabies"],
		[3, "Ranks of Poison Creeper"],
		[2, "Ranks of All Corpse Skills"],
		[3, "Ranks of Bone Spear"],
		[3, "Ranks of Blood Surge"],
		[3, "Ranks of Bone Prison"],
		[3, "Ranks of Corpse Tendrils"],
		[2, "Ranks of Alll Agility Skills"],
		[3, "Ranks of Rapid Fire"],
		[3, "Ranks of Twisting Blades"],
		[3, "Ranks of Caltrops"],
		[3, "Ranks of Dark Shroud"],
		[3, "Ranks of Shadow Imbuement"],
		[2, "Ranks of All Conjuration Skills"],
		[3, "Ranks of Ice Shards"],
		[3, "Ranks of Incinerate"],
		[3, "Ranks of Blizzard"],
		[3, "Ranks of Frost Nova"],
		[3, "Ranks of Ice Blades"],
		[3, "Ranks of Teleport"]
	]
	return classArray1
}