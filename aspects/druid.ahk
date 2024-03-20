﻿#SingleInstance Force

getDruidNames()
{
dirIni := "C:\Users\marcu\Desktop\diablo\aspects.ini"
	druidNames := [
		["Mending Stone", IniRead(dirIni, "DRUID", "Mending Stone"), 
			"* The duration of Earthern Bulwark is increased by 6 seconds. In addition, killing an enemy with Earth skills replenishes [X] of your active Earthen Bulwark's Barrier."],
		["Metamorphic Stone", IniRead(dirIni, "DRUID", "Metamorphic Stone"), 
			"* Boulder is now a Core Skill and costs 60 Spirit to cast dealing [80-100]% of normal damage."],
		["Natural Balance", IniRead(dirIni, "DRUID", "Natural Balance"), 
			"* Casting a Storm Skill grants your Earth Skills [30.0-45.0]% Critical Strike Damage for 4 seconds. Casting an Earth Skill increases the Critical Strike Chance of Storm Skills by [8.0-12.0]% for 4 seconds."],
		["Quicksand", IniRead(dirIni, "DRUID", "Quicksand"), 
			"* Damage from Earth skills Slow enemies hit by [25-50]% for 5 seconds."],
		["Retaliation", IniRead(dirIni, "DRUID", "Retaliation"), 
			"* Your Core skills deal up to [20-40]%[x] increased damage based on your amount of Fortify."],
		["Alpha", IniRead(dirIni, "DRUID", "Alpha"), 
			"* Your Wolf Companions are now Werewolf Companions. Werewolf Companions deal [75-100]%[+] additional damage and can spread Rabies."],
		["Blurred Beast", IniRead(dirIni, "DRUID", "Blurred Beast"), 
			"* While dashing, Shred seeks out Nearby Poisoned enemies instantly dealing [60-90%] of the Poisoning damage to them."],
		["Calm Breeze", IniRead(dirIni, "DRUID", "Calm Breeze"), 
			"* Lucky Hit: Wind Shear has up to a [5-10]% chance to fully restore your Spirit"],
		["Changelings Debt", IniRead(dirIni, "DRUID", "Changelings Debt"), 
			"* Damaging a Poisoned enemy with a Werebear Skill will instantly deal [120-150]% of the Poisoning damage and consume the Poisoning"],
		["Dark Howl", IniRead(dirIni, "DRUID", "Dark Howl"), 
			"* Debilitating Roar is now a Werewolf Skill. In addition, Debilitating Roar will Immobilize Poisoned enemies for [2.0-4.0] seconds."],
		["Rampaging Werebeast", IniRead(dirIni, "DRUID", "Rampaging Werebeast"), 
			"* The duration of Grizzly Rage is increased by [1-5] seconds. In addition, Critical Strikes while Grizzly Rage is active increase your Critical Strike Damage by 10%[x] for the duration."],
		["Stampede", IniRead(dirIni, "DRUID", "Stampede"), 
			"* Gain 1 additional Companion. In addition, your Companion Skills deal [10-20%] bonus damage."],
		["Tempest", IniRead(dirIni, "DRUID", "Tempest"), 
			"* Hurricane damage is increased by [7.0-15.0%] each second while active."],
		["Trampled Earth", IniRead(dirIni, "DRUID", "Trampled Earth"), 
			"* Trample now summons 6 Landslide pillars of earth during its duration that deal [70-80]% normal damage. Trample is now also a Nature Magic and Earth Skill."],
		["Unsatiated", IniRead(dirIni, "DRUID", "Unsatiated"), 
			"* After killing an enemy with Shred, your next Werewolf Skill generates [20-30%] more Spirit and deals [20-30%] increased damage."],
		["Ursine Horror", IniRead(dirIni, "DRUID", "Ursine Horror"), 
			"* Pulverize is now also an Earth skill. After casting Pulverize, tectonic spikes continue to deal [X] damage over 2 seconds."],
		["Wildrage", IniRead(dirIni, "DRUID", "Wildrage"), 
			"* Your Companions gain the bonuses from the Bestial Rampage Key Passive."],
		["Balanced", IniRead(dirIni, "DRUID", "Balanced"), 
			"* Increase your Maximum Spirit by [30-50] and Spirit Generation by 20% while Grizzly Rage is active."],
		["Ballistic", IniRead(dirIni, "DRUID", "Ballistic"), 
			"* When you have Fortify your Earth Skills gain +2 Ranks."],
		["Crashstone", IniRead(dirIni, "DRUID", "Crashstone"), 
			"* Earth Skills deal [40-50%] more Critical Strike Damage to Crowd Controlled enemies."],
		["Dire Wolf", IniRead(dirIni, "DRUID", "Dire Wolf"), 
			"* Grizzly Rage now shapeshifts you into a Dire Werewolf. As a Dire Werewolf you gain [15-25%] Movement Speed instead of Damage Reduction and a [30-50%] Spirit cost reduction bonus. In addition, kills Heal you for 10% of your Maximum Life."],
		["Earthguard", IniRead(dirIni, "DRUID", "Earthguard"), 
			"* Gain [15-25%] bonus amount to your next Earthen Bulwark for each enemy you Crowd Control up to a maximum of 100%."],
		["Lightning Dancer", IniRead(dirIni, "DRUID", "Lightning Dancer"), 
			"* Lightning Storm Critical Strikes spawn 3 Dancing Bolts that seek enemies in the area dealing [X] Lightning damage."],
		["Mangled", IniRead(dirIni, "DRUID", "Mangled"), 
			"* When you are struck as a Werebear you have a [30-40%] chance to gain 1 Spirit."],
		["Mighty Storm", IniRead(dirIni, "DRUID", "Mighty Storm"), 
			"* The Earthen Might Key Passive also applies to your Storm Skills"],
		["Nighthowler", IniRead(dirIni, "DRUID", "Nighthowler"), 
			"* Blood Howl increases Critical Strike Chance by [5.0%-10.0%] In addition, Blood Howl also affects nearby Companions and Players for 3 seconds."],
		["Overcharged", IniRead(dirIni, "DRUID", "Overcharged"), 
			"* Lucky Hit: Up to a [10-20%] chance when dealing Lightning damage to overload the target for 3 seconds, causing any direct damage you deal to them to pulse [X] additional damage to surrounding enemies."],
		["Runeworkers Conduit", IniRead(dirIni, "DRUID", "Runeworkers Conduit"), 
			"* Critical Strikes with Storm Skills charge the air around you for [1.0-2.0] seconds causing a Lightning Strike to periodically hit an enemy in the area for [X] Lightning Damage."],
		["Seismic Shift", IniRead(dirIni, "DRUID", "Seismic Shift"), 
			"* Earth Spike launches spikes in a line and has a [1.5-2.5] second Cooldown."],
		["Shepherd", IniRead(dirIni, "DRUID", "Shepherd"), 
			"* Core Skills deal an additional [6.0-8.0%] damage for each active Companion."],
		["Shockwave", IniRead(dirIni, "DRUID", "Shockwave"), 
			"* Pulverize creates a shockwave that travels forward, dealing [X]% of its damage to targets in the path."],
		["Skinwalker", IniRead(dirIni, "DRUID", "Skinwalker"), 
			"* When you use a Shapeshifting Skill that changes your form, gain [X] Life. If you are at full Life, gain the same amount as Fortify."],
		["Stormchaser", IniRead(dirIni, "DRUID", "Stormchaser"), 
			"* Tornado will seek up to [1-3] targets."],
		["Stormclaw", IniRead(dirIni, "DRUID", "Stormclaw"), 
			"* Critical Strikes with Shred deal [20-30]% of the damage dealt as Lightning Damage to the target and surrounding enemies."],
		["Stormshifter", IniRead(dirIni, "DRUID", "Stormshifter"), 
			"* While Hurricane is active, gain +2 Ranks to your Shapeshifting Skills."],
		["Symbiotic", IniRead(dirIni, "DRUID", "Symbiotic"), 
			"* When the Nature's Fury Key Passive triggers a free Skill, your non Ultimate Cooldowns of the opposite type are reduced by [4-8] seconds."],
		["Vigorous", IniRead(dirIni, "DRUID", "Vigorous"), 
			"* Gain [10.0-15.0]% Damage Reduction while Shapeshifted into a Werewolf."],
		["Natures Savagery", IniRead(dirIni, "DRUID", "Natures Savagery"), 
			"* Werewolf Skills function as Storm Skills and Werebear Skills function as Earth Skills for the Nature's Fury Key Passive."]
	]
	return druidNames
}