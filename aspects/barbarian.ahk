﻿#SingleInstance Force

getBarbarianNames()
{
dirIni := "C:\Users\marcu\Desktop\diablo\aspects.ini"
	barbarianNames := [
		["Perpetual Stomping", IniRead(dirIni, "BARBARIAN", "Perpetual Stomping"),
			"* Damaging an enemy with Kick or Ground Stomp resets Leap's Cooldown. (Barbarian Only)"],
		["Relentless Berserker", IniRead(dirIni, "BARBARIAN", "Relentless Berserker"),
			"* Lucky Hit: Damaging an enemy with a Core Skill has up to a 404404% [22 - 40%] chance to extend the duration of Berserking by 1 second. Double this duration if it was a Critical Strike. (Barbarian Only)"],
		["Echoing Fury", IniRead(dirIni, "BARBARIAN", "Echoing Fury"),
			"* Your Shout skills generate [2.0-4.0] Fury per seconds while active. (Barbarian Only)"],
		["Relentless Armsmaster", IniRead(dirIni, "BARBARIAN", "Relentless Armsmaster"),
			"* Gain 404404% [20-36%] increased Fury Generation while all damage bonuses from Walking Arsenal Key Passive are active. (Barbarian Only)"],
		["Brawler", IniRead(dirIni, "BARBARIAN", "Brawler"),
			"* Enemies damaged by Kick or Charge will explode if they are killed within the next 2 seconds, dealing [404] damage to surrounding enemies. (Barbarian Only)"],
		["Veteran Brawler", IniRead(dirIni, "BARBARIAN", "Veteran Brawler"),
			"* Each time a Core Skill deals direct damage to an enemy, your next Charge or Leap deals 404404% [15-20]% increased damage, up to 404404404% [225-300]% (Barbarian Only)"],
		["Berserk Ripping", IniRead(dirIni, "BARBARIAN", "Berserk Ripping"),
			"* Whenever you deal direct damage while Berserking, inflict 404404% [20-30%] of the base damage dealt as additional Bleeding damage over 5 seconds. (Barbarian Only)"],
		["Ancestral Force", IniRead(dirIni, "BARBARIAN", "Ancestral Force"),
			"* Hammer of the Ancients quakes outwards, dealing 404404% [32-50]% of its damage to enemies. (Barbarian Only)"],
		["Deathwish", IniRead(dirIni, "BARBARIAN", "Deathwish"),
			"* Gain [404] Thorns while Berserking. (Barbarian Only)"],
		["Dire Whirlwind", IniRead(dirIni, "BARBARIAN", "Dire Whirlwind"),
			"* Whirlwind's Critical Strike Chance is increased by 404% [3 - 8]% for each second it is channeled, up to 404404% [9 - 24]%. (Barbarian Only)"],
		["Ancestral Echoes", IniRead(dirIni, "BARBARIAN", "Ancestral Echoes"),
			"* Lucky Hit: While Call of the Ancients is on your Action Bar, damaging enemies with Leap, Upheaval, or Whirlwind have up to a 404404% [40-50]% chance to summon an Ancient to perform the same Skill. (Barbarian Only)"],
		["Earthstriker", IniRead(dirIni, "BARBARIAN", "Earthstriker"),
			"* After swapping weapons 10 times, your next attack will Overpower and deal 404404% [30-50%] increased Overpower damage. (Barbarian Only)"],
		["Iron Warrior", IniRead(dirIni, "BARBARIAN", "Iron Warrior"),
			"* Iron Skin grants Unstoppable, and 404404% [10-20]% Damage Reduction. (Barbarian Only)"],
		["Iron Blood", IniRead(dirIni, "BARBARIAN", "Iron Blood"),
			"* Gain 404.404% [2.0-4.0%] Damage Reduction for each nearby Bleeding enemy up to 404404% [10 - 20%] maximum. (Barbarian Only)"],
		["Numbing Wrath", IniRead(dirIni, "BARBARIAN", "Numbing Wrath"),
			"* Each point of Fury generated while at Maximum Fury grants [404] Fortify. (Barbarian Only)"],
		["BulKathos", IniRead(dirIni, "BARBARIAN", "BulKathos"),
			"* Leap creates an Earthquake that deals [404] Physical damage over 4 seconds. While standing in Earthquakes, you gain 5% increased Damage Reduction. (Barbarian Only)"],
		["Anemia", IniRead(dirIni, "BARBARIAN", "Anemia"),
			"* Lucky Hit: Direct damage against Bleeding enemies has up to a 404404% [20-30]% chance to Stun them for 2 seconds. (Barbarian Only)"],
		["Unrelenting Fury", IniRead(dirIni, "BARBARIAN", "Unrelenting Fury"),
			"* Killing an enemy with a Core Skill refunds 404404.404% [10.0-20.0]% of its base Fury cost. Can only happen once per Skill cast. (Barbarian Only)"],
		["Slaking", IniRead(dirIni, "BARBARIAN", "Slaking"),
			"* Lucky Hit: You have up to a 404404% [30-50%] chance to gain 20 Fury when Rend deals direct damage to at least one Bleeding enemy. (Barbarian Only)"],
		["Tempering Blows", IniRead(dirIni, "BARBARIAN", "Tempering Blows"),
			"* After Swapping weapons 6 times, gain [404] Fortify. (Barbarian Only)"],
		["Steadfast Berserker", IniRead(dirIni, "BARBARIAN", "Steadfast Berserker"),
			"* Lucky Hit: Up to a 35% chance to gain [404] Fortify whenever you deal direct damage while Berserking. (Barbarian Only)"],
		["Devilish", IniRead(dirIni, "BARBARIAN", "Devilish"),
			"* After generating 100 Fury your next Core Skill creates a Dust Devil that deals [404] damage to enemies behind the target. (Barbarian Only)"],
		["Dustdevil", IniRead(dirIni, "BARBARIAN", "Dustdevil"),
			"* Whirlwind leaves behind Dust Devils that deal [404] damage to surrounding enemies. (Barbarian Only)"],
		["Earthquake", IniRead(dirIni, "BARBARIAN", "Earthquake"),
			"* Ground Stomp creates an Earthquake damaging enemies for [404] Physical Damage over 4 seconds. While standing in Earthquakes, you deal 404404% [5-15%] increased damage. (Barbarian Only)"],
		["Burning Rage", IniRead(dirIni, "BARBARIAN", "Burning Rage"),
			"* While Berserking you deal [404] Fire Damage every second to surrounding enemies. (Barbarian Only)"],
		["Encroaching Wrath", IniRead(dirIni, "BARBARIAN", "Encroaching Wrath"),
			"* After spending 100 Fury, your next Weapon Mastery Skill deals 404404% [82-100]%[x] increased damage. (Barbarian Only)"],
		["Limitless Rage", IniRead(dirIni, "BARBARIAN", "Limitless Rage"),
			"* Each point of Fury you generate while at Maximum Fury grants your next Core Skill 404% [1-2]% increased damage, up to 404404% [15-30]%. (Barbarian Only)"],
		["Skullbreaker", IniRead(dirIni, "BARBARIAN", "Skullbreaker"),
			"* Stunning a Bleeding enemy deals 404404% [22-40%] of their total Bleeding amount to them as Physical damage. (Barbarian Only)"],
		["Windlasher", IniRead(dirIni, "BARBARIAN", "Windlasher"),
			"* Casting Double Swing twice within 1.5 seconds creates a Dust Devil that deals [404] damage to enemies behind the target. (Barbarian Only)"],
		["Bear Clan", IniRead(dirIni, "BARBARIAN", "Bear Clan"),
			"* Killing an enemy while Berserking has a 40% chance to grant 404404% [16-32%] increased Cooldown Reduction to your Brawling Skills for 2 seconds (Barbarian Only)"],
		["Bold Chieftain", IniRead(dirIni, "BARBARIAN", "Bold Chieftain"),
			"* Whenever you cast a Shout Skill, its Cooldown is reduced by [1.0 -1.9] seconds per Nearby enemy, up to a maximum of 6 seconds. (Barbarian Only)"],
		["Berserk Fury", IniRead(dirIni, "BARBARIAN", "Berserk Fury"),
			"* You gain [3-6] Fury per second while Berserking. (Barbarian Only)"],
		["Giant Strides", IniRead(dirIni, "BARBARIAN", "Giant Strides"),
			"* Reduces the Cooldown of Leap by [3-5] seconds per enemy hit, up to a maximum of 9 seconds. (Barbarian Only)"],
		["Luckbringer", IniRead(dirIni, "BARBARIAN", "Luckbringer"),
			"* Gain 404404% [12-20%] increased Lucky Hit Chance while all damage bonuses from the Walking Arsenal Key Passive are active. (Barbarian Only)"],
		["Grasping Whirlwind", IniRead(dirIni, "BARBARIAN", "Grasping Whirlwind"),
			"* Whirlwind periodically Pulls enemies to you. (Barbarian Only)"],
		["Weapon Master", IniRead(dirIni, "BARBARIAN", "Weapon Master"),
			"* Your Weapon Mastery Skills have an additional Charge. Lucky Hit: Damaging an enemy with a Weapon Mastery Skill has up to a 404404% [32-50]% chance to Stun them for 2 seconds. (Barbarian Only)"], ; maybe lucky hit
		["Battle-mad", IniRead(dirIni, "BARBARIAN", "Battle-mad"),
			"* Gain Berserking for [404] seconds after swapping weapons 10 times. (Barbarian Only)"]
	]
	return barbarianNames
}