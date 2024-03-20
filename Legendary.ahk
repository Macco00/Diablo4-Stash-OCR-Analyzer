global dirIni := A_WorkingDir . "\aspects.ini"
global dirAspect := A_WorkingDir . "\py\images\bannerText\outputAspects.txt"
global dirAspectname := A_WorkingDir . "\py\images\bannerText\desiredAspects.txt"
global dirArrays := A_WorkingDir . "\aspects\"

#include "C:\Users\marcu\Desktop\diablo\aspects\all.ahk"
#include "C:\Users\marcu\Desktop\diablo\aspects\barbarian.ahk"
#include "C:\Users\marcu\Desktop\diablo\aspects\druid.ahk"
#include "C:\Users\marcu\Desktop\diablo\aspects\necromancer.ahk"
#include "C:\Users\marcu\Desktop\diablo\aspects\rogue.ahk"
#include "C:\Users\marcu\Desktop\diablo\aspects\sorcerer.ahk"

Loop 1
{
	; Load ini, loop if it doesn't exist
	if FileExist("aspects.ini")
	{
		global dirRoot

; [OPTIONS]
resolution := 			IniRead(dirIni, "OPTIONS", "Resolution")
; [ALL]
ghostwalker := 			IniRead(dirIni, "ALL", "Ghost Walker")
windStriker := 			IniRead(dirIni, "ALL", "Wind Striker")
sharedMisery := 		IniRead(dirIni, "ALL", "Shared Misery")
umbral := 				IniRead(dirIni, "ALL", "Umbral")
edgemaster := 			IniRead(dirIni, "ALL", "Edgemaster")
rapid := 				IniRead(dirIni, "ALL", "Rapid")
needleFlare := 			IniRead(dirIni, "ALL", "Needle Flare")
innerCalm := 			IniRead(dirIni, "ALL", "Inner Calm")
expectant := 			IniRead(dirIni, "ALL", "Expectant")
retribution := 			IniRead(dirIni, "ALL", "Retribution")
might := 				IniRead(dirIni, "ALL", "Might")
disobedience := 		IniRead(dirIni, "ALL", "Disobedience")
deflectingBarrier := 	IniRead(dirIni, "ALL", "Deflecting Barrier")
eluding := 				IniRead(dirIni, "ALL", "Eluding")
protector := 			IniRead(dirIni, "ALL", "Protector")
crowdedSage := 			IniRead(dirIni, "ALL", "Crowded Sage")
protecting := 			IniRead(dirIni, "ALL", "Protecting")
accelerating := 		IniRead(dirIni, "ALL", "Accelerating")
conceited := 			IniRead(dirIni, "ALL", "Conceited")
smiting := 				IniRead(dirIni, "ALL", "Smiting")
assimilation := 		IniRead(dirIni, "ALL", "Assimilation")
starlight := 			IniRead(dirIni, "ALL", "Starlight")
exploiter := 			IniRead(dirIni, "ALL", "Exploiter")

; [BARBARIAN]
perpetualStomping := 	IniRead(dirIni, "BARBARIAN", "Perpetual Stomping")
relentlessBerserker := 	IniRead(dirIni, "BARBARIAN", "Relentless Berserker")
echoingFury := 			IniRead(dirIni, "BARBARIAN", "Echoing Fury")
relentlessArmsmaster := IniRead(dirIni, "BARBARIAN", "Relentless Armsmaster")
brawler := 				IniRead(dirIni, "BARBARIAN", "Brawler")
veteranBrawler := 		IniRead(dirIni, "BARBARIAN", "Veteran Brawler")
berserkRipping := 		IniRead(dirIni, "BARBARIAN", "Berserk Ripping")
ancestralForce := 		IniRead(dirIni, "BARBARIAN", "Ancestral Force")
deathwish := 			IniRead(dirIni, "BARBARIAN", "Deathwish")
direWhirlwind := 		IniRead(dirIni, "BARBARIAN", "Dire Whirlwind")
ancestralEchoes := 		IniRead(dirIni, "BARBARIAN", "Ancestral Echoes")
earthstriker := 		IniRead(dirIni, "BARBARIAN", "Earthstriker")
ironWarrior := 			IniRead(dirIni, "BARBARIAN", "Iron Warrior")
ironBlood := 			IniRead(dirIni, "BARBARIAN", "Iron Blood")
numbingWrath := 		IniRead(dirIni, "BARBARIAN", "Numbing Wrath")
bulKathos := 			IniRead(dirIni, "BARBARIAN", "BulKathos")
anemia := 				IniRead(dirIni, "BARBARIAN", "Anemia")
unrelentingFury := 		IniRead(dirIni, "BARBARIAN", "Unrelenting Fury")
slaking := 				IniRead(dirIni, "BARBARIAN", "Slaking")
temperingBlows := 		IniRead(dirIni, "BARBARIAN", "Tempering Blows")
steadfastBerserker := 	IniRead(dirIni, "BARBARIAN", "Steadfast Berserker")
devilish := 			IniRead(dirIni, "BARBARIAN", "Devilish")
dustdevil := 			IniRead(dirIni, "BARBARIAN", "Dustdevil")
earthquake := 			IniRead(dirIni, "BARBARIAN", "Earthquake")
burningRage := 			IniRead(dirIni, "BARBARIAN", "Burning Rage")
encroachingWrath := 	IniRead(dirIni, "BARBARIAN", "Encroaching Wrath")
limitlessRage := 		IniRead(dirIni, "BARBARIAN", "Limitless Rage")
skullbreaker := 		IniRead(dirIni, "BARBARIAN", "Skullbreaker")
windlasher := 			IniRead(dirIni, "BARBARIAN", "Windlasher")
bearClan := 			IniRead(dirIni, "BARBARIAN", "Bear Clan")
boldChieftain := 		IniRead(dirIni, "BARBARIAN", "Bold Chieftain")
berserkFury := 			IniRead(dirIni, "BARBARIAN", "Berserk Fury")
giantStrides := 		IniRead(dirIni, "BARBARIAN", "Giant Strides")
luckbringer := 			IniRead(dirIni, "BARBARIAN", "Luckbringer")
graspingWhirlwind := 	IniRead(dirIni, "BARBARIAN", "Grasping Whirlwind")
weaponMaster := 		IniRead(dirIni, "BARBARIAN", "Weapon Master")
battlemad := 			IniRead(dirIni, "BARBARIAN", "Battle-mad")

; [DRUID]
mendingStone := IniRead(dirIni, "DRUID", "Mending Stone")
metamorphicStone := IniRead(dirIni, "DRUID", "Metamorphic Stone")
naturalBalance := IniRead(dirIni, "DRUID", "Natural Balance")
quicksand := IniRead(dirIni, "DRUID", "Quicksand")
retaliation := IniRead(dirIni, "DRUID", "Retaliation")
alpha := IniRead(dirIni, "DRUID", "Alpha")
blurredBeast := IniRead(dirIni, "DRUID", "Blurred Beast")
calmBreeze := IniRead(dirIni, "DRUID", "Calm Breeze")
changelingsDebt := IniRead(dirIni, "DRUID", "Changelings Debt")
darkHowl := IniRead(dirIni, "DRUID", "Dark Howl")
rampagingWerebeast := IniRead(dirIni, "DRUID", "Rampaging Werebeast")
stampede := IniRead(dirIni, "DRUID", "Stampede")
tempest := IniRead(dirIni, "DRUID", "Tempest")
trampledEarth := IniRead(dirIni, "DRUID", "Trampled Earth")
unsatiated := IniRead(dirIni, "DRUID", "Unsatiated")
ursineHorror := IniRead(dirIni, "DRUID", "Ursine Horror")
wildrage := IniRead(dirIni, "DRUID", "Wildrage")
balanced := IniRead(dirIni, "DRUID", "Balanced")
ballistic := IniRead(dirIni, "DRUID", "Ballistic")
; missing

; [NECROMANCER]
burstingBones := IniRead(dirIni, "NECROMANCER", "Bursting Bones")
decay := IniRead(dirIni, "NECROMANCER", "Decay")
empoweringReaper := IniRead(dirIni, "NECROMANCER", "Empowering Reaper")
explosiveMist := IniRead(dirIni, "NECROMANCER", "Explosive Mist")
exposedFlesh := IniRead(dirIni, "NECROMANCER", "Exposed Flesh")
frenziedDead := IniRead(dirIni, "NECROMANCER", "Frenzied Dead")
graspingVeins := IniRead(dirIni, "NECROMANCER", "Grasping Veins")
hardenedBones := IniRead(dirIni, "NECROMANCER", "Hardened Bones")
hungryBlood := IniRead(dirIni, "NECROMANCER", "Hungry Blood")
plungingDarkness := IniRead(dirIni, "NECROMANCER", "Plunging Darkness")
potentBlood := IniRead(dirIni, "NECROMANCER", "Potent Blood")
rathmasChosen := IniRead(dirIni, "NECROMANCER", "Rathmas Chosen")
reanimation := IniRead(dirIni, "NECROMANCER", "Reanimation")
serration := IniRead(dirIni, "NECROMANCER", "Serration")
shieldingStorm := IniRead(dirIni, "NECROMANCER", "Shielding Storm")
swellingCurse := IniRead(dirIni, "NECROMANCER", "Swelling Curse")
torment := IniRead(dirIni, "NECROMANCER", "Torment")
ultimateShadow := IniRead(dirIni, "NECROMANCER", "Ultimate Shadow")
untimelyDeath := IniRead(dirIni, "NECROMANCER", "Untimely Death")
damned := IniRead(dirIni, "NECROMANCER", "Damned")
embalmer := IniRead(dirIni, "NECROMANCER", "Embalmer")
void := IniRead(dirIni, "NECROMANCER", "Void")
blighted := IniRead(dirIni, "NECROMANCER", "Blighted")
bloodGetter := IniRead(dirIni, "NECROMANCER", "Blood Getter")
bloodSeeker := IniRead(dirIni, "NECROMANCER", "Blood Seeker")
bloodSoaked := IniRead(dirIni, "NECROMANCER", "Blood Soaked")
bloodBathed := IniRead(dirIni, "NECROMANCER", "Blood Bathed")
cadaverous := IniRead(dirIni, "NECROMANCER", "Cadaverous")
coldbringer := IniRead(dirIni, "NECROMANCER", "Coldbringer")
fastblood := IniRead(dirIni, "NECROMANCER", "Fastblood")
fleshRending := IniRead(dirIni, "NECROMANCER", "Flesh Rending")
hulking := IniRead(dirIni, "NECROMANCER", "Hulking")
osseous := IniRead(dirIni, "NECROMANCER", "Osseous")
requiem := IniRead(dirIni, "NECROMANCER", "Requiem")
rotting := IniRead(dirIni, "NECROMANCER", "Rotting")
sacrificial := IniRead(dirIni, "NECROMANCER", "Sacrificial")
splintering := IniRead(dirIni, "NECROMANCER", "Splintering")
tidal := IniRead(dirIni, "NECROMANCER", "Tidal")
torturous := IniRead(dirIni, "NECROMANCER", "Torturous")
unyieldingCommander := IniRead(dirIni, "NECROMANCER", "Unyielding Commander")
viscous := IniRead(dirIni, "NECROMANCER", "Viscous")

; [ROGUE]
arrowStorms := IniRead(dirIni, "ROGUE", "Arrow Storms")
branchingVolleys := IniRead(dirIni, "ROGUE", "Branching Volleys")
burstingVenoms := IniRead(dirIni, "ROGUE", "Bursting Venoms")
corruption := IniRead(dirIni, "ROGUE", "Corruption")
cruelSustenance := IniRead(dirIni, "ROGUE", "Cruel Sustenance")
elusiveMenace := IniRead(dirIni, "ROGUE", "Elusive Menace")
encirclingBlades := IniRead(dirIni, "ROGUE", "Encircling Blades")
explosiveVerve := IniRead(dirIni, "ROGUE", "Explosive Verve")
imitatedImbuement := IniRead(dirIni, "ROGUE", "Imitated Imbuement")
lethalDusk := IniRead(dirIni, "ROGUE", "Lethal Dusk")
noxiousIce := IniRead(dirIni, "ROGUE", "Noxious Ice")
quickeningFog := IniRead(dirIni, "ROGUE", "Quickening Fog")
quickening := IniRead(dirIni, "ROGUE", "Quickening")
repeating := IniRead(dirIni, "ROGUE", "Repeating")
siphonedVictuals := IniRead(dirIni, "ROGUE", "Siphoned Victuals")
stolenVigor := IniRead(dirIni, "ROGUE", "Stolen Vigor")
surprise := IniRead(dirIni, "ROGUE", "Surprise")
synergy := IniRead(dirIni, "ROGUE", "Synergy")
uncannyResilience := IniRead(dirIni, "ROGUE", "Uncanny Resilience")
uncannyTreachery := IniRead(dirIni, "ROGUE", "Uncanny Treachery")
unstableImbuements := IniRead(dirIni, "ROGUE", "Unstable Imbuements")
volatileShadows := IniRead(dirIni, "ROGUE", "Volatile Shadows")
bladedancer := IniRead(dirIni, "ROGUE", "Bladedancer")
blastTrapper := IniRead(dirIni, "ROGUE", "Blast Trapper")
cheat := IniRead(dirIni, "ROGUE", "Cheat")
energizing := IniRead(dirIni, "ROGUE", "Energizing")
enshrouding := IniRead(dirIni, "ROGUE", "Enshrouding")
escapeArtist := IniRead(dirIni, "ROGUE", "Escape Artist")
frostbitten := IniRead(dirIni, "ROGUE", "Frostbitten")
icyAlchemist := IniRead(dirIni, "ROGUE", "Icy Alchemist")
infiltrator := IniRead(dirIni, "ROGUE", "Infiltrator")
mangler := IniRead(dirIni, "ROGUE", "Mangler")
opportunist := IniRead(dirIni, "ROGUE", "Opportunist")
ravager := IniRead(dirIni, "ROGUE", "Ravager")
ravenous := IniRead(dirIni, "ROGUE", "Ravenous")
shadowslicer := IniRead(dirIni, "ROGUE", "Shadowslicer")
snapFrozen := IniRead(dirIni, "ROGUE", "Snap Frozen")
toxicAlchemist := IniRead(dirIni, "ROGUE", "Toxic Alchemist")
trickshot := IniRead(dirIni, "ROGUE", "Trickshot")
trickster := IniRead(dirIni, "ROGUE", "Trickster")
umbrous := IniRead(dirIni, "ROGUE", "Umbrous")
vengeful := IniRead(dirIni, "ROGUE", "Vengeful")

; [SORCERER]
abundantEnergy := IniRead(dirIni, "SORCERER", "Abundant Energy")
ancientFlame := IniRead(dirIni, "SORCERER", "Ancient Flame")
armageddon := IniRead(dirIni, "SORCERER", "Armageddon")
bindingEmbers := IniRead(dirIni, "SORCERER", "Binding Embers")
bitingCold := IniRead(dirIni, "SORCERER", "Biting Cold")
concentration := IniRead(dirIni, "SORCERER", "Concentration")
conflagration := IniRead(dirIni, "SORCERER", "Conflagration")
control := IniRead(dirIni, "SORCERER", "Control")
efficiency := IniRead(dirIni, "SORCERER", "Efficiency")
engulfingFlames := IniRead(dirIni, "SORCERER", "Engulfing Flames")
fortune := IniRead(dirIni, "SORCERER", "Fortune")
frozenMemories := IniRead(dirIni, "SORCERER", "Frozen Memories")
frozenOrbit := IniRead(dirIni, "SORCERER", "Frozen Orbit")
frozenWake := IniRead(dirIni, "SORCERER", "Frozen Wake")
overwhelmingCurrents := IniRead(dirIni, "SORCERER", "Overwhelming Currents")
piercingCold := IniRead(dirIni, "SORCERER", "Piercing Cold")
shatteredStars := IniRead(dirIni, "SORCERER", "Shattered Stars")
singedExtremities := IniRead(dirIni, "SORCERER", "Singed Extremities")
splinteringEnergy := IniRead(dirIni, "SORCERER", "Splintering Energy")
staticCling := IniRead(dirIni, "SORCERER", "Static Cling")
threeCurses := IniRead(dirIni, "SORCERER", "Three Curses")
boundingConduit := IniRead(dirIni, "SORCERER", "Bounding Conduit")
frozenTundra := IniRead(dirIni, "SORCERER", "Frozen Tundra")
unbrokenTether := IniRead(dirIni, "SORCERER", "Unbroken Tether")
unwavering := IniRead(dirIni, "SORCERER", "Unwavering")
charged := IniRead(dirIni, "SORCERER", "Charged")
elementalist := IniRead(dirIni, "SORCERER", "Elementalist")
encased := IniRead(dirIni, "SORCERER", "Encased")
everliving := IniRead(dirIni, "SORCERER", "Everliving")
flamewalker := IniRead(dirIni, "SORCERER", "Flamewalker")
frostblitz := IniRead(dirIni, "SORCERER", "Frostblitz")
glacial := IniRead(dirIni, "SORCERER", "Glacial")
gravitational := IniRead(dirIni, "SORCERER", "Gravitational")
incendiary := IniRead(dirIni, "SORCERER", "Incendiary")
mageLord := IniRead(dirIni, "SORCERER", "Mage Lord")
prodigy := IniRead(dirIni, "SORCERER", "Prodigy")
recharging := IniRead(dirIni, "SORCERER", "Recharging")
serpentine := IniRead(dirIni, "SORCERER", "Serpentine")
shattered := IniRead(dirIni, "SORCERER", "Shattered")
snowguard := IniRead(dirIni, "SORCERER", "Snowguard")
snowveiled := IniRead(dirIni, "SORCERER", "Snowveiled")
stable := IniRead(dirIni, "SORCERER", "Stable")
stormSwell := IniRead(dirIni, "SORCERER", "Storm Swell")



	}
	; Creates an ini file with everything off, loop copies values to the variables
	else
	{
		FileAppend "[OPTIONS]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Resolution=1`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "[ALL]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ghost Walker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Wind Striker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shared Misery=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Umbral=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Edgemaster=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Rapid=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Needle Flare=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Inner Calm=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Expectant=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Retribution=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Might=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Disobedience=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Deflecting Barrier=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Eluding=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Protector=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Crowded Sage=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Protecting=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Accelerating=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Conceited=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Smiting=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Assimilation=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Starlight=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Exploiter=0`n", "aspects.ini", "UTF-16-RAW"

		FileAppend "[BARBARIAN]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Perpetual Stomping=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Relentless Berserker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Echoing Fury=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Relentless Armsmaster=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Brawler=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Veteran Brawler=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Berserk Ripping=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ancestral Force=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Deathwish=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Dire Whirlwind=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ancestral Echoes=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Earthstriker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Iron Warrior=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Iron Blood=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Numbing Wrath=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "BulKathos=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Anemia=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unrelenting Fury=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Slaking=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Tempering Blows=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Steadfast Berserker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Devilish=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Dustdevil=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Earthquake=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Burning Rage=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Encroaching Wrath=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Limitless Rage=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Skullbreaker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Windlasher=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bear Clan=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bold Chieftain=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Berserk Fury=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Giant Strides=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Luckbringer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Grasping Whirlwind=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Weapon Master=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Battle-mad=0`n", "aspects.ini", "UTF-16-RAW"

		FileAppend "[DRUID]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Mending Stone=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Metamorphic Stone=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Natural Balance=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Quicksand=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Retaliation=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Alpha=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blurred Beast=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Calm Breeze=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Changelings Debt=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Dark Howl=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Rampaging Werebeast=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stampede=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Tempest=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Trampled Earth=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unsatiated=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ursine Horror=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Wildrage=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Balanced=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ballistic=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Crashstone=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Dire Wolf=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Earthguard=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Lightning Dancer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Mangled=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Mighty Storm=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Nighthowler=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Overcharged=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Runeworkers Conduit=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Seismic Shift=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shepherd=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shockwave=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Skinwalker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stormchaser=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stormclaw=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stormshifter=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Symbiotic=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Vigorous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Natures Savagery=0`n", "aspects.ini", "UTF-16-RAW"

		FileAppend "[NECROMANCER]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bursting Bones=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Decay=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Empowering Reaper=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Explosive Mist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Exposed Flesh=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frenzied Dead=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Grasping Veins=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Hardened Bones=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Hungry Blood=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Plunging Darkness=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Potent Blood=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Rathmas Chosen=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Reanimation=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Serration=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shielding Storm=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Swelling Curse=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Torment=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ultimate Shadow=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Untimely Death=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Damned=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Embalmer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Void=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blighted=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blood Getter=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blood Seeker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blood Soaked=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blood Bathed=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Cadaverous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Coldbringer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Fastblood=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Flesh Rending=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Hulking=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Osseous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Requiem=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Rotting=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Sacrificial=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Splintering=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Tidal=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Torturous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unyielding Commander=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Viscous=0`n", "aspects.ini", "UTF-16-RAW"

		FileAppend "[ROGUE]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Arrow Storms=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Branching Volleys=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bursting Venoms=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Corruption=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Cruel Sustenance=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Elusive Menace=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Encircling Blades=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Explosive Verve=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Imitated Imbuement=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Lethal Dusk=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Noxious Ice=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Quickening Fog=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Quickening=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Repeating=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Siphoned Victuals=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stolen Vigor=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Surprise=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Synergy=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Uncanny Resilience=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Uncanny Treachery=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unstable Imbuements=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Volatile Shadows=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bladedancer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Blast Trapper=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Cheat=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Energizing=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Enshrouding=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Escape Artist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frostbitten=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Icy Alchemist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Infiltrator=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Mangler=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Opportunist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ravager=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ravenous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shadowslicer=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Snap Frozen=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Toxic Alchemist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Trickshot=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Trickster=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Umbrous=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Vengeful=0`n", "aspects.ini", "UTF-16-RAW"
	
		FileAppend "[SORCERER]`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Abundant Energy=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Ancient Flame=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Armageddon=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Binding Embers=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Biting Cold=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Concentration=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Conflagration=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Control=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Efficiency=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Engulfing Flames=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Fortune=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frozen Memories=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frozen Orbit=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frozen Wake=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Overwhelming Currents=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Piercing Cold=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shattered Stars=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Singed Extremities=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Splintering Energy=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Static Cling=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Three Curses=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Bounding Conduit=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frozen Tundra=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unbroken Tether=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Unwavering=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Charged=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Elementalist=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Encased=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Everliving=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Flamewalker=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Frostblitz=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Glacial=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Gravitational=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Incendiary=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Mage Lord=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Prodigy=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Recharging=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Serpentine=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Shattered=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Snowguard=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Snowveiled=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Stable=0`n", "aspects.ini", "UTF-16-RAW"
		FileAppend "Storm Swell=0`n", "aspects.ini", "UTF-16-RAW"
	}
}
;-----------------------------------------------------------------------------
#Requires Autohotkey v2.0
;AutoGUI 2.5.8 
;Auto-GUI-v2 credit to Alguimist autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter credit to github.com/mmikeww/AHK-v2-script-converter
myGui := Gui()
Tab := myGui.Add("Tab3",,["ALL","BARBARIAN","DRUID","NECROMANCER","ROGUE","SORCERER"])

;-----------------------------ALL---------------------------------------------

Tab.UseTab(1)

CheckBox_Storage1 := myGui.Add("CheckBox", "vChkGhostwalker w150 h23", "Ghostwalker")
CheckBox_Storage2 := myGui.Add("CheckBox", "vChkWindStriker w150 h23", "Wind Striker")
CheckBox_Storage3 := myGui.Add("CheckBox", "vChkSharedMisery w150 h23", "Shared Misery")
CheckBox_Storage4 := myGui.Add("CheckBox", "vChkUmbral w150 h23", "Umbral")
CheckBox_Storage5 := myGui.Add("CheckBox", "vChkEdgemaster w150 h23", "Edgemaster")
CheckBox_Storage6 := myGui.Add("CheckBox", "vChkRapid w150 h23", "Rapid")
CheckBox_Storage7 := myGui.Add("CheckBox", "vChkNeedleflare w150 h23", "Needleflare")
CheckBox_Storage8 := myGui.Add("CheckBox", "vChkInnerCalm w150 h23", "Inner Calm")
CheckBox_Storage9 := myGui.Add("CheckBox", "vChkExpectant w150 h23", "Expectant")
CheckBox_Storage10 := myGui.Add("CheckBox", "vChkRetribution w150 h23", "Retribution")
CheckBox_Storage11 := myGui.Add("CheckBox", "vChkMight w150 h23", "Might")
CheckBox_Storage12 := myGui.Add("CheckBox", "vChkDisobedience w150 h23", "Disobedience")
CheckBox_Storage13 := myGui.Add("CheckBox", "vChkDeflectingBarrier w150 h23", "Deflecting Barrier")
CheckBox_Storage14 := myGui.Add("CheckBox", "vChkEluding x+10 y+-373 w150 h23", "Eluding")
CheckBox_Storage15 := myGui.Add("CheckBox", "vChkProtector w150 h23", "Protector")
CheckBox_Storage16 := myGui.Add("CheckBox", "vChkCrowdedSage w150 h23", "Crowded Sage")
CheckBox_Storage17 := myGui.Add("CheckBox", "vChkProtecting w150 h23", "Protecting")
CheckBox_Storage18 := myGui.Add("CheckBox", "vChkAccelerating w150 h23", "Accelerating")
CheckBox_Storage19 := myGui.Add("CheckBox", "vChkConceited w150 h23", "Conceited")
CheckBox_Storage20 := myGui.Add("CheckBox", "vChkSmiting w150 h23", "Smiting")
CheckBox_Storage21 := myGui.Add("CheckBox", "vChkAssimilation w150 h23", "Assimilation")
CheckBox_Storage22 := myGui.Add("CheckBox", "vChkStarlight w150 h23", "Starlight")
CheckBox_Storage23 := myGui.Add("CheckBox", "vChkExploiter w150 h23", "Exploiter")

CheckBox_Storage1.Value := IniRead(dirIni, "ALL", "Ghost Walker")
CheckBox_Storage2.Value := IniRead(dirIni, "ALL", "Wind Striker")
CheckBox_Storage3.Value := IniRead(dirIni, "ALL", "Shared Misery")
CheckBox_Storage4.Value := IniRead(dirIni, "ALL", "Umbral")
CheckBox_Storage5.Value := IniRead(dirIni, "ALL", "Edgemaster")
CheckBox_Storage6.Value := IniRead(dirIni, "ALL", "Rapid")
CheckBox_Storage7.Value := IniRead(dirIni, "ALL", "Needle Flare")
CheckBox_Storage8.Value := IniRead(dirIni, "ALL", "Inner Calm")
CheckBox_Storage9.Value := IniRead(dirIni, "ALL", "Expectant")
CheckBox_Storage10.Value := IniRead(dirIni, "ALL", "Retribution")
CheckBox_Storage11.Value := IniRead(dirIni, "ALL", "Might")
CheckBox_Storage12.Value := IniRead(dirIni, "ALL", "Disobedience")
CheckBox_Storage13.Value := IniRead(dirIni, "ALL", "Deflecting Barrier")
CheckBox_Storage14.Value := IniRead(dirIni, "ALL", "Eluding")
CheckBox_Storage15.Value := IniRead(dirIni, "ALL", "Protector")
CheckBox_Storage16.Value := IniRead(dirIni, "ALL", "Crowded Sage")
CheckBox_Storage17.Value := IniRead(dirIni, "ALL", "Protecting")
CheckBox_Storage18.Value := IniRead(dirIni, "ALL", "Accelerating")
CheckBox_Storage19.Value := IniRead(dirIni, "ALL", "Conceited")
CheckBox_Storage20.Value := IniRead(dirIni, "ALL", "Smiting")
CheckBox_Storage21.Value := IniRead(dirIni, "ALL", "Assimilation")
CheckBox_Storage22.Value := IniRead(dirIni, "ALL", "Starlight")
CheckBox_Storage23.Value := IniRead(dirIni, "ALL", "Exploiter")

;-----------------------------BARBARIAN---------------------------------------------
Tab.UseTab(2)
CheckBox_Storage24 := myGui.Add("CheckBox", "vChkperpetualstompinglf w150 h23", "Perpetual Stomping")
CheckBox_Storage25 := myGui.Add("CheckBox", "vChkrelentlessberserkerlf w150 h23", "Relentless Berserker")
CheckBox_Storage26 := myGui.Add("CheckBox", "vChkechoingfurylf w150 h23", "Echoing Fury")
CheckBox_Storage27 := myGui.Add("CheckBox", "vChkrelentlessarmsmasterlf w150 h23", "Relentless Armsmaster")
CheckBox_Storage28 := myGui.Add("CheckBox", "vChkbrawlerlf w150 h23", "Brawler")
CheckBox_Storage29 := myGui.Add("CheckBox", "vChkveternbrawlerlf w150 h23", "Vetern Brawler")
CheckBox_Storage30 := myGui.Add("CheckBox", "vChkberserkrippinglf w150 h23", "Berserk Ripping")
CheckBox_Storage31 := myGui.Add("CheckBox", "vChkancestralforcelf w150 h23", "Ancestral Force")
CheckBox_Storage32 := myGui.Add("CheckBox", "vChkdeathwishlf w150 h23", "Death Wish")
CheckBox_Storage33 := myGui.Add("CheckBox", "vChkdirewhirlwindlf w150 h23", "Dire Whirlwind")
CheckBox_Storage34 := myGui.Add("CheckBox", "vChkancestralechoeslf w150 h23", "Ancestral Echoes")
CheckBox_Storage35 := myGui.Add("CheckBox", "vChkearthstrikerlf w150 h23", "Earthstriker")
CheckBox_Storage36 := myGui.Add("CheckBox", "vChkironwarriorlf w150 h23", "Iron Warrior")
CheckBox_Storage37 := myGui.Add("CheckBox", "vChkironbloodlf x+10 y+-373 w150 h23", "Iron Blood") ; new column (num 14)
CheckBox_Storage38 := myGui.Add("CheckBox", "vChknumbingwrathlf w150 h23", "Numbing Wrath")
CheckBox_Storage39 := myGui.Add("CheckBox", "vChkbulkathoslf w150 h23", "Bul-Kathos")
CheckBox_Storage40 := myGui.Add("CheckBox", "vChkanemialf w150 h23", "Anemia")
CheckBox_Storage41 := myGui.Add("CheckBox", "vChkunrelentingfurylf w150 h23", "Unrelenting Fury")
CheckBox_Storage42 := myGui.Add("CheckBox", "vChkslakinglf w150 h23", "Slaking")
CheckBox_Storage43 := myGui.Add("CheckBox", "vChktemperingblowslf w150 h23", "Tempering Blows")
CheckBox_Storage44 := myGui.Add("CheckBox", "vChksteadfastberserker w150 h23", "Steadfast Berserker")
CheckBox_Storage45 := myGui.Add("CheckBox", "vChkdevilish w150 h23", "Devilish")
CheckBox_Storage46 := myGui.Add("CheckBox", "vChkdustdevil w150 h23", "Dust Devil")
CheckBox_Storage47 := myGui.Add("CheckBox", "vChkearthquake w150 h23", "Earthquake")
CheckBox_Storage48 := myGui.Add("CheckBox", "vChkburningrage w150 h23", "Burning Rage")
CheckBox_Storage49 := myGui.Add("CheckBox", "vChkencroachingwrath w150 h23", "Encroaching Wrath")
CheckBox_Storage50 := myGui.Add("CheckBox", "vChklimitlessrage x+10 y+-373 w150 h23", "Limitless Rage") ; new column
CheckBox_Storage51 := myGui.Add("CheckBox", "vChkskullbreaker w150 h23", "Skullbreaker")
CheckBox_Storage52 := myGui.Add("CheckBox", "vChkwindlasher w150 h23", "Windlasher")
CheckBox_Storage53 := myGui.Add("CheckBox", "vChkbearclan w150 h23", "Bear Clan")
CheckBox_Storage54 := myGui.Add("CheckBox", "vChkboldchieftain w150 h23", "Bold Chieftain")
CheckBox_Storage55 := myGui.Add("CheckBox", "vChkberserkfury w150 h23", "Berserk Fury")
CheckBox_Storage56 := myGui.Add("CheckBox", "vChkgiantstrides w150 h23", "Giant Strides")
CheckBox_Storage57 := myGui.Add("CheckBox", "vChkluckbringer w150 h23", "Luckbringer")
CheckBox_Storage58 := myGui.Add("CheckBox", "vChkgraspingwhirlwind w150 h23", "Grasping Whirlwind")
CheckBox_Storage59 := myGui.Add("CheckBox", "vChkweaponmaster w150 h23", "Weapon Master")
CheckBox_Storage60 := myGui.Add("CheckBox", "vChkbattlemad w150 h23", "Battle-Mad")

CheckBox_Storage24.Value := IniRead(dirIni, "BARBARIAN", "Perpetual Stomping")
CheckBox_Storage25.Value := IniRead(dirIni, "BARBARIAN", "Relentless Berserker")
CheckBox_Storage26.Value := IniRead(dirIni, "BARBARIAN", "Echoing Fury")
CheckBox_Storage27.Value := IniRead(dirIni, "BARBARIAN", "Relentless Armsmaster")
CheckBox_Storage28.Value := IniRead(dirIni, "BARBARIAN", "Brawler")
CheckBox_Storage29.Value := IniRead(dirIni, "BARBARIAN", "Veteran Brawler")
CheckBox_Storage30.Value := IniRead(dirIni, "BARBARIAN", "Berserk Ripping")
CheckBox_Storage31.Value := IniRead(dirIni, "BARBARIAN", "Ancestral Force")
CheckBox_Storage32.Value := IniRead(dirIni, "BARBARIAN", "Deathwish")
CheckBox_Storage33.Value := IniRead(dirIni, "BARBARIAN", "Dire Whirlwind")
CheckBox_Storage34.Value := IniRead(dirIni, "BARBARIAN", "Ancestral Echoes")
CheckBox_Storage35.Value := IniRead(dirIni, "BARBARIAN", "Earthstriker")
CheckBox_Storage36.Value := IniRead(dirIni, "BARBARIAN", "Iron Warrior")
CheckBox_Storage37.Value := IniRead(dirIni, "BARBARIAN", "Iron Blood")
CheckBox_Storage38.Value := IniRead(dirIni, "BARBARIAN", "Numbing Wrath")
CheckBox_Storage39.Value := IniRead(dirIni, "BARBARIAN", "BulKathos")
CheckBox_Storage40.Value := IniRead(dirIni, "BARBARIAN", "Anemia")
CheckBox_Storage41.Value := IniRead(dirIni, "BARBARIAN", "Unrelenting Fury")
CheckBox_Storage42.Value := IniRead(dirIni, "BARBARIAN", "Slaking")
CheckBox_Storage43.Value := IniRead(dirIni, "BARBARIAN", "Tempering Blows")
CheckBox_Storage44.Value := IniRead(dirIni, "BARBARIAN", "Steadfast Berserker")
CheckBox_Storage45.Value := IniRead(dirIni, "BARBARIAN", "Devilish")
CheckBox_Storage46.Value := IniRead(dirIni, "BARBARIAN", "Dustdevil")
CheckBox_Storage47.Value := IniRead(dirIni, "BARBARIAN", "Earthquake")
CheckBox_Storage48.Value := IniRead(dirIni, "BARBARIAN", "Burning Rage")
CheckBox_Storage49.Value := IniRead(dirIni, "BARBARIAN", "Encroaching Wrath")
CheckBox_Storage50.Value := IniRead(dirIni, "BARBARIAN", "Limitless Rage")
CheckBox_Storage51.Value := IniRead(dirIni, "BARBARIAN", "Skullbreaker")
CheckBox_Storage52.Value := IniRead(dirIni, "BARBARIAN", "Windlasher")
CheckBox_Storage53.Value := IniRead(dirIni, "BARBARIAN", "Bear Clan")
CheckBox_Storage54.Value := IniRead(dirIni, "BARBARIAN", "Bold Chieftain")
CheckBox_Storage55.Value := IniRead(dirIni, "BARBARIAN", "Berserk Fury")
CheckBox_Storage56.Value := IniRead(dirIni, "BARBARIAN", "Giant Strides")
CheckBox_Storage57.Value := IniRead(dirIni, "BARBARIAN", "Luckbringer")
CheckBox_Storage58.Value := IniRead(dirIni, "BARBARIAN", "Grasping Whirlwind")
CheckBox_Storage59.Value := IniRead(dirIni, "BARBARIAN", "Weapon Master")
CheckBox_Storage60.Value := IniRead(dirIni, "BARBARIAN", "Battle-Mad")

;-----------------------------DRUID---------------------------------------------
Tab.UseTab(3)
CheckBox_Storage61 := myGui.Add("CheckBox", "vChkMendingStone w150 h23", "Mending Stone")
CheckBox_Storage62 := myGui.Add("CheckBox", "vChkMetamorphicStone w150 h23", "Metamorphic Stone")
CheckBox_Storage63 := myGui.Add("CheckBox", "vChkNaturalBalance w150 h23", "Natural Balance")
CheckBox_Storage64 := myGui.Add("CheckBox", "vChkQuicksand w150 h23", "Quicksand")
CheckBox_Storage65 := myGui.Add("CheckBox", "vChkRetaliation w150 h23", "Retaliation")
CheckBox_Storage66 := myGui.Add("CheckBox", "vChkAlpha w150 h23", "Alpha")
CheckBox_Storage67 := myGui.Add("CheckBox", "vChkBlurredBeast w150 h23", "Blurred Beast")
CheckBox_Storage68 := myGui.Add("CheckBox", "vChkCalmBreeze w150 h23", "Calm Breeze")
CheckBox_Storage69 := myGui.Add("CheckBox", "vChkChangelingsDebt w150 h23", "Changelings Debt")
CheckBox_Storage70 := myGui.Add("CheckBox", "vChkDarkHowl w150 h23", "Dark Howl")
CheckBox_Storage71 := myGui.Add("CheckBox", "vChkRampagingWerebeast w150 h23", "Rampaging Werebeast")
CheckBox_Storage72 := myGui.Add("CheckBox", "vChkStampede w150 h23", "Stampede")
CheckBox_Storage73 := myGui.Add("CheckBox", "vChkTempest w150 h23", "Tempest")
CheckBox_Storage74 := myGui.Add("CheckBox", "vChkTrampledEarth x+10 y+-373 w150 h23", "Trampled Earth")
CheckBox_Storage75 := myGui.Add("CheckBox", "vChkUnsatiated w150 h23", "Unsatiated")
CheckBox_Storage76 := myGui.Add("CheckBox", "vChkUrsineHorror w150 h23", "Ursine Horror")
CheckBox_Storage77 := myGui.Add("CheckBox", "vChkWildrage w150 h23", "Wildrage")
CheckBox_Storage78 := myGui.Add("CheckBox", "vChkBalanced w150 h23", "Balanced")
CheckBox_Storage79 := myGui.Add("CheckBox", "vChkBallistic w150 h23", "Ballistic")
CheckBox_Storage80 := myGui.Add("CheckBox", "vChkCrashstone w150 h23", "Crashstone")
CheckBox_Storage81 := myGui.Add("CheckBox", "vChkDireWolf w150 h23", "Dire Wolf")
CheckBox_Storage82 := myGui.Add("CheckBox", "vChkEarthguard w150 h23", "Earthguard")
CheckBox_Storage83 := myGui.Add("CheckBox", "vChkLightningDancer w150 h23", "Lightning Dancer")
CheckBox_Storage84 := myGui.Add("CheckBox", "vChkMangled w150 h23", "Mangled")
CheckBox_Storage85 := myGui.Add("CheckBox", "vChkMightyStorm w150 h23", "Mighty Storm")
CheckBox_Storage86 := myGui.Add("CheckBox", "vChkNighthowler w150 h23", "Nighthowler")
CheckBox_Storage87 := myGui.Add("CheckBox", "vChkOvercharged x+10 y+-373 w150 h23", "Overcharged")
CheckBox_Storage88 := myGui.Add("CheckBox", "vChkRuneworkersConduit w150 h23", "Runeworkers Conduit")
CheckBox_Storage89 := myGui.Add("CheckBox", "vChkSeismicShift w150 h23", "Seismic Shift")
CheckBox_Storage90 := myGui.Add("CheckBox", "vChkShepherd w150 h23", "Shepherd")
CheckBox_Storage91 := myGui.Add("CheckBox", "vChkShockwave w150 h23", "Shockwave")
CheckBox_Storage92 := myGui.Add("CheckBox", "vChkSkinwalker w150 h23", "Skinwalker")
CheckBox_Storage93 := myGui.Add("CheckBox", "vChkStormchaser w150 h23", "Stormchaser")
CheckBox_Storage94 := myGui.Add("CheckBox", "vChkStormclaw w150 h23", "Stormclaw")
CheckBox_Storage95 := myGui.Add("CheckBox", "vChkStormshifter w150 h23", "Stormshifter")
CheckBox_Storage96 := myGui.Add("CheckBox", "vChkSymbiotic w150 h23", "Symbiotic")
CheckBox_Storage97 := myGui.Add("CheckBox", "vChkVigorous w150 h23", "Vigorous")
CheckBox_Storage98 := myGui.Add("CheckBox", "vChkNaturesSavagery w150 h23", "Natures Savagery")

CheckBox_Storage61.Value := IniRead(dirIni, "DRUID", "Mending Stone")
CheckBox_Storage62.Value := IniRead(dirIni, "DRUID", "Metamorphic Stone")
CheckBox_Storage63.Value := IniRead(dirIni, "DRUID", "Natural Balance")
CheckBox_Storage64.Value := IniRead(dirIni, "DRUID", "Quicksand")
CheckBox_Storage65.Value := IniRead(dirIni, "DRUID", "Retaliation")
CheckBox_Storage66.Value := IniRead(dirIni, "DRUID", "Alpha")
CheckBox_Storage67.Value := IniRead(dirIni, "DRUID", "Blurred Beast")
CheckBox_Storage68.Value := IniRead(dirIni, "DRUID", "Calm Breeze")
CheckBox_Storage69.Value := IniRead(dirIni, "DRUID", "Changelings Debt")
CheckBox_Storage70.Value := IniRead(dirIni, "DRUID", "Dark Howl")
CheckBox_Storage71.Value := IniRead(dirIni, "DRUID", "Rampaging Werebeast")
CheckBox_Storage72.Value := IniRead(dirIni, "DRUID", "Stampede")
CheckBox_Storage73.Value := IniRead(dirIni, "DRUID", "Tempest")
CheckBox_Storage74.Value := IniRead(dirIni, "DRUID", "Trampled Earth")
CheckBox_Storage75.Value := IniRead(dirIni, "DRUID", "Unsatiated")
CheckBox_Storage76.Value := IniRead(dirIni, "DRUID", "Ursine Horror")
CheckBox_Storage77.Value := IniRead(dirIni, "DRUID", "Wildrage")
CheckBox_Storage78.Value := IniRead(dirIni, "DRUID", "Balanced")
CheckBox_Storage79.Value := IniRead(dirIni, "DRUID", "Ballistic")
CheckBox_Storage80.Value := IniRead(dirIni, "DRUID", "Crashstone")
CheckBox_Storage81.Value := IniRead(dirIni, "DRUID", "Dire Wolf")
CheckBox_Storage82.Value := IniRead(dirIni, "DRUID", "Earthguard")
CheckBox_Storage83.Value := IniRead(dirIni, "DRUID", "Lightning Dancer")
CheckBox_Storage84.Value := IniRead(dirIni, "DRUID", "Mangled")
CheckBox_Storage85.Value := IniRead(dirIni, "DRUID", "Mighty Storm")
CheckBox_Storage86.Value := IniRead(dirIni, "DRUID", "Nighthowler")
CheckBox_Storage87.Value := IniRead(dirIni, "DRUID", "Overcharged")
CheckBox_Storage88.Value := IniRead(dirIni, "DRUID", "Runeworkers Conduit")
CheckBox_Storage89.Value := IniRead(dirIni, "DRUID", "Seismic Shift")
CheckBox_Storage90.Value := IniRead(dirIni, "DRUID", "Shepherd")
CheckBox_Storage91.Value := IniRead(dirIni, "DRUID", "Shockwave")
CheckBox_Storage92.Value := IniRead(dirIni, "DRUID", "Skinwalker")
CheckBox_Storage93.Value := IniRead(dirIni, "DRUID", "Stormchaser")
CheckBox_Storage94.Value := IniRead(dirIni, "DRUID", "Stormclaw")
CheckBox_Storage95.Value := IniRead(dirIni, "DRUID", "Stormshifter")
CheckBox_Storage96.Value := IniRead(dirIni, "DRUID", "Symbiotic")
CheckBox_Storage97.Value := IniRead(dirIni, "DRUID", "Vigorous")
CheckBox_Storage98.Value := IniRead(dirIni, "DRUID", "Natures Savagery")

;-----------------------------NECROMANCER---------------------------------------------
Tab.UseTab(4)
CheckBox_Storage99 := myGui.Add("CheckBox", "vChkBurstingBones w150 h23", "Bursting Bones")
CheckBox_Storage100 := myGui.Add("CheckBox", "vChkDecay w150 h23", "Decay")
CheckBox_Storage101 := myGui.Add("CheckBox", "vChkEmpoweringReaper w150 h23", "Empowering Reaper")
CheckBox_Storage102 := myGui.Add("CheckBox", "vChkExplosiveMist w150 h23", "Explosive Mist")
CheckBox_Storage103 := myGui.Add("CheckBox", "vChkExposedFlesh w150 h23", "Exposed Flesh")
CheckBox_Storage104 := myGui.Add("CheckBox", "vChkFrenziedDead w150 h23", "Frenzied Dead")
CheckBox_Storage105 := myGui.Add("CheckBox", "vChkGraspingVeins w150 h23", "Grasping Veins")
CheckBox_Storage106 := myGui.Add("CheckBox", "vChkHardenedBones w150 h23", "Hardened Bones")
CheckBox_Storage107 := myGui.Add("CheckBox", "vChkHungryBlood w150 h23", "Hungry Blood")
CheckBox_Storage108 := myGui.Add("CheckBox", "vChkPlungingDarkness w150 h23", "Plunging Darkness")
CheckBox_Storage109 := myGui.Add("CheckBox", "vChkPotentBlood w150 h23", "Potent Blood")
CheckBox_Storage110 := myGui.Add("CheckBox", "vChkRathmasChosen w150 h23", "Rathmas Chosen")
CheckBox_Storage111 := myGui.Add("CheckBox", "vChkReanimation w150 h23", "Reanimation")
CheckBox_Storage112 := myGui.Add("CheckBox", "vChkSerration x+10 y+-373 w150 h23", "Serration")
CheckBox_Storage113 := myGui.Add("CheckBox", "vChkShieldingStorm w150 h23", "Shielding Storm")
CheckBox_Storage114 := myGui.Add("CheckBox", "vChkSwellingCurse w150 h23", "Swelling Curse")
CheckBox_Storage115 := myGui.Add("CheckBox", "vChkTorment w150 h23", "Torment")
CheckBox_Storage116 := myGui.Add("CheckBox", "vChkUltimateShadow w150 h23", "Ultimate Shadow")
CheckBox_Storage117 := myGui.Add("CheckBox", "vChkUntimelyDeath w150 h23", "Untimely Death")
CheckBox_Storage118 := myGui.Add("CheckBox", "vChkDamned w150 h23", "Damned")
CheckBox_Storage119 := myGui.Add("CheckBox", "vChkEmbalmer w150 h23", "Embalmer")
CheckBox_Storage120 := myGui.Add("CheckBox", "vChkVoid w150 h23", "Void")
CheckBox_Storage121 := myGui.Add("CheckBox", "vChkBlighted w150 h23", "Blighted")
CheckBox_Storage122 := myGui.Add("CheckBox", "vChkBloodGetter w150 h23", "Blood Getter")
CheckBox_Storage123 := myGui.Add("CheckBox", "vChkBloodSeeker w150 h23", "Blood Seeker")
CheckBox_Storage124 := myGui.Add("CheckBox", "vChkBloodSoaked w150 h23", "Blood Soaked")
CheckBox_Storage125 := myGui.Add("CheckBox", "vChkBloodBathed x+10 y+-373 w150 h23", "Blood Bathed")
CheckBox_Storage126 := myGui.Add("CheckBox", "vChkCadaverous w150 h23", "Cadaverous")
CheckBox_Storage127 := myGui.Add("CheckBox", "vChkColdbringer w150 h23", "Coldbringer")
CheckBox_Storage128 := myGui.Add("CheckBox", "vChkFastblood w150 h23", "Fastblood")
CheckBox_Storage129 := myGui.Add("CheckBox", "vChkFleshRending w150 h23", "Flesh Rending")
CheckBox_Storage130 := myGui.Add("CheckBox", "vChkHulking w150 h23", "Hulking")
CheckBox_Storage131 := myGui.Add("CheckBox", "vChkOsseous w150 h23", "Osseous")
CheckBox_Storage132 := myGui.Add("CheckBox", "vChkRequiem w150 h23", "Requiem")
CheckBox_Storage133 := myGui.Add("CheckBox", "vChkRotting w150 h23", "Rotting")
CheckBox_Storage134 := myGui.Add("CheckBox", "vChkSacrificial w150 h23", "Sacrificial")
CheckBox_Storage135 := myGui.Add("CheckBox", "vChkSplintering w150 h23", "Splintering")
CheckBox_Storage136 := myGui.Add("CheckBox", "vChkTidal w150 h23", "Tidal")
CheckBox_Storage137 := myGui.Add("CheckBox", "vChkTorturous w150 h23", "Torturous")
CheckBox_Storage138 := myGui.Add("CheckBox", "vChkUnyieldingCommander x+10 y+-373 w150 h23", "Unyielding Commander")
CheckBox_Storage139 := myGui.Add("CheckBox", "vChkViscous w150 h23", "Viscous")

CheckBox_Storage99.Value := IniRead(dirIni, "NECROMANCER", "Bursting Bones")
CheckBox_Storage100.Value := IniRead(dirIni, "NECROMANCER", "Decay")
CheckBox_Storage101.Value := IniRead(dirIni, "NECROMANCER", "Empowering Reaper")
CheckBox_Storage102.Value := IniRead(dirIni, "NECROMANCER", "Explosive Mist")
CheckBox_Storage103.Value := IniRead(dirIni, "NECROMANCER", "Exposed Flesh")
CheckBox_Storage104.Value := IniRead(dirIni, "NECROMANCER", "Frenzied Dead")
CheckBox_Storage105.Value := IniRead(dirIni, "NECROMANCER", "Grasping Veins")
CheckBox_Storage106.Value := IniRead(dirIni, "NECROMANCER", "Hardened Bones")
CheckBox_Storage107.Value := IniRead(dirIni, "NECROMANCER", "Hungry Blood")
CheckBox_Storage108.Value := IniRead(dirIni, "NECROMANCER", "Plunging Darkness")
CheckBox_Storage109.Value := IniRead(dirIni, "NECROMANCER", "Potent Blood")
CheckBox_Storage110.Value := IniRead(dirIni, "NECROMANCER", "Rathmas Chosen")
CheckBox_Storage111.Value := IniRead(dirIni, "NECROMANCER", "Reanimation")
CheckBox_Storage112.Value := IniRead(dirIni, "NECROMANCER", "Serration")
CheckBox_Storage113.Value := IniRead(dirIni, "NECROMANCER", "Shielding Storm")
CheckBox_Storage114.Value := IniRead(dirIni, "NECROMANCER", "Swelling Curse")
CheckBox_Storage115.Value := IniRead(dirIni, "NECROMANCER", "Torment")
CheckBox_Storage116.Value := IniRead(dirIni, "NECROMANCER", "Ultimate Shadow")
CheckBox_Storage117.Value := IniRead(dirIni, "NECROMANCER", "Untimely Death")
CheckBox_Storage118.Value := IniRead(dirIni, "NECROMANCER", "Damned")
CheckBox_Storage119.Value := IniRead(dirIni, "NECROMANCER", "Embalmer")
CheckBox_Storage120.Value := IniRead(dirIni, "NECROMANCER", "Void")
CheckBox_Storage121.Value := IniRead(dirIni, "NECROMANCER", "Blighted")
CheckBox_Storage122.Value := IniRead(dirIni, "NECROMANCER", "Blood Getter")
CheckBox_Storage123.Value := IniRead(dirIni, "NECROMANCER", "Blood Seeker")
CheckBox_Storage124.Value := IniRead(dirIni, "NECROMANCER", "Blood Soaked")
CheckBox_Storage125.Value := IniRead(dirIni, "NECROMANCER", "Blood Bathed")
CheckBox_Storage126.Value := IniRead(dirIni, "NECROMANCER", "Cadaverous")
CheckBox_Storage127.Value := IniRead(dirIni, "NECROMANCER", "Coldbringer")
CheckBox_Storage128.Value := IniRead(dirIni, "NECROMANCER", "Fastblood")
CheckBox_Storage129.Value := IniRead(dirIni, "NECROMANCER", "Flesh Rending")
CheckBox_Storage130.Value := IniRead(dirIni, "NECROMANCER", "Hulking")
CheckBox_Storage131.Value := IniRead(dirIni, "NECROMANCER", "Osseous")
CheckBox_Storage132.Value := IniRead(dirIni, "NECROMANCER", "Requiem")
CheckBox_Storage133.Value := IniRead(dirIni, "NECROMANCER", "Rotting")
CheckBox_Storage134.Value := IniRead(dirIni, "NECROMANCER", "Sacrificial")
CheckBox_Storage135.Value := IniRead(dirIni, "NECROMANCER", "Splintering")
CheckBox_Storage136.Value := IniRead(dirIni, "NECROMANCER", "Tidal")
CheckBox_Storage137.Value := IniRead(dirIni, "NECROMANCER", "Torturous")
CheckBox_Storage138.Value := IniRead(dirIni, "NECROMANCER", "Unyielding Commander")
CheckBox_Storage139.Value := IniRead(dirIni, "NECROMANCER", "Viscous")

;-----------------------------ROGUE---------------------------------------------
Tab.UseTab(5)
CheckBox_Storage140 := myGui.Add("CheckBox", "vChkArrowStorms w150 h23", "Arrow Storms")
CheckBox_Storage141 := myGui.Add("CheckBox", "vChkBranchingVolleys w150 h23", "Branching Volleys")
CheckBox_Storage142 := myGui.Add("CheckBox", "vChkBurstingVenoms w150 h23", "Bursting Venoms")
CheckBox_Storage143 := myGui.Add("CheckBox", "vChkCorruption w150 h23", "Corruption")
CheckBox_Storage144 := myGui.Add("CheckBox", "vChkCruelSustenance w150 h23", "Cruel Sustenance")
CheckBox_Storage145 := myGui.Add("CheckBox", "vChkElusiveMenace w150 h23", "Elusive Menace")
CheckBox_Storage146 := myGui.Add("CheckBox", "vChkEncirclingBlades w150 h23", "Encircling Blades")
CheckBox_Storage147 := myGui.Add("CheckBox", "vChkExplosiveVerve w150 h23", "Explosive Verve")
CheckBox_Storage148 := myGui.Add("CheckBox", "vChkImitatedImbuement w150 h23", "Imitated Imbuement")
CheckBox_Storage149 := myGui.Add("CheckBox", "vChkLethalDusk w150 h23", "Lethal Dusk")
CheckBox_Storage150 := myGui.Add("CheckBox", "vChkNoxiousIce w150 h23", "Noxious Ice")
CheckBox_Storage151 := myGui.Add("CheckBox", "vChkQuickeningFog w150 h23", "Quickening Fog")
CheckBox_Storage152 := myGui.Add("CheckBox", "vChkQuickening w150 h23", "Quickening")
CheckBox_Storage153 := myGui.Add("CheckBox", "vChkRepeating x+10 y+-373 w150 h23", "Repeating")
CheckBox_Storage154 := myGui.Add("CheckBox", "vChkSiphonedVictuals w150 h23", "Siphoned Victuals")
CheckBox_Storage155 := myGui.Add("CheckBox", "vChkStolenVigor w150 h23", "Stolen Vigor")
CheckBox_Storage156 := myGui.Add("CheckBox", "vChkSurprise w150 h23", "Surprise")
CheckBox_Storage157 := myGui.Add("CheckBox", "vChkSynergy w150 h23", "Synergy")
CheckBox_Storage158 := myGui.Add("CheckBox", "vChkUncannyResilience w150 h23", "Uncanny Resilience")
CheckBox_Storage159 := myGui.Add("CheckBox", "vChkUncannyTreachery w150 h23", "Uncanny Treachery")
CheckBox_Storage160 := myGui.Add("CheckBox", "vChkUnstableImbuements w150 h23", "Unstable Imbuements")
CheckBox_Storage161 := myGui.Add("CheckBox", "vChkVolatileShadows w150 h23", "Volatile Shadows")
CheckBox_Storage162 := myGui.Add("CheckBox", "vChkBladedancer w150 h23", "Bladedancer")
CheckBox_Storage163 := myGui.Add("CheckBox", "vChkBlastTrapper w150 h23", "Blast Trapper")
CheckBox_Storage164 := myGui.Add("CheckBox", "vChkCheat w150 h23", "Cheat")
CheckBox_Storage165 := myGui.Add("CheckBox", "vChkEnergizing w150 h23", "Energizing")
CheckBox_Storage166 := myGui.Add("CheckBox", "vChkEnshrouding x+10 y+-373 w150 h23", "Enshrouding")
CheckBox_Storage167 := myGui.Add("CheckBox", "vChkEscapeArtist w150 h23", "Escape Artist")
CheckBox_Storage168 := myGui.Add("CheckBox", "vChkFrostbitten w150 h23", "Frostbitten")
CheckBox_Storage169 := myGui.Add("CheckBox", "vChkIcyAlchemist w150 h23", "Icy Alchemist")
CheckBox_Storage170 := myGui.Add("CheckBox", "vChkInfiltrator w150 h23", "Infiltrator")
CheckBox_Storage171 := myGui.Add("CheckBox", "vChkMangler w150 h23", "Mangler")
CheckBox_Storage172 := myGui.Add("CheckBox", "vChkOpportunist w150 h23", "Opportunist")
CheckBox_Storage173 := myGui.Add("CheckBox", "vChkRavager w150 h23", "Ravager")
CheckBox_Storage174 := myGui.Add("CheckBox", "vChkRavenous w150 h23", "Ravenous")
CheckBox_Storage175 := myGui.Add("CheckBox", "vChkShadowslicer w150 h23", "Shadowslicer")
CheckBox_Storage176 := myGui.Add("CheckBox", "vChkSnapFrozen w150 h23", "Snap Frozen")
CheckBox_Storage177 := myGui.Add("CheckBox", "vChkToxicAlchemist w150 h23", "Toxic Alchemist")
CheckBox_Storage178 := myGui.Add("CheckBox", "vChkTrickshot w150 h23", "Trickshot")
CheckBox_Storage179 := myGui.Add("CheckBox", "vChkTrickster x+10 y+-373 w150 h23", "Trickster")
CheckBox_Storage180 := myGui.Add("CheckBox", "vChkUmbrous w150 h23", "Umbrous")
CheckBox_Storage181 := myGui.Add("CheckBox", "vChkVengeful w150 h23", "Vengeful")

CheckBox_Storage140.Value := IniRead(dirIni, "ROGUE", "Arrow Storms")
CheckBox_Storage141.Value := IniRead(dirIni, "ROGUE", "Branching Volleys")
CheckBox_Storage142.Value := IniRead(dirIni, "ROGUE", "Bursting Venoms")
CheckBox_Storage143.Value := IniRead(dirIni, "ROGUE", "Corruption")
CheckBox_Storage144.Value := IniRead(dirIni, "ROGUE", "Cruel Sustenance")
CheckBox_Storage145.Value := IniRead(dirIni, "ROGUE", "Elusive Menace")
CheckBox_Storage146.Value := IniRead(dirIni, "ROGUE", "Encircling Blades")
CheckBox_Storage147.Value := IniRead(dirIni, "ROGUE", "Explosive Verve")
CheckBox_Storage148.Value := IniRead(dirIni, "ROGUE", "Imitated Imbuement")
CheckBox_Storage149.Value := IniRead(dirIni, "ROGUE", "Lethal Dusk")
CheckBox_Storage150.Value := IniRead(dirIni, "ROGUE", "Noxious Ice")
CheckBox_Storage151.Value := IniRead(dirIni, "ROGUE", "Quickening Fog")
CheckBox_Storage152.Value := IniRead(dirIni, "ROGUE", "Quickening")
CheckBox_Storage153.Value := IniRead(dirIni, "ROGUE", "Repeating")
CheckBox_Storage154.Value := IniRead(dirIni, "ROGUE", "Siphoned Victuals")
CheckBox_Storage155.Value := IniRead(dirIni, "ROGUE", "Stolen Vigor")
CheckBox_Storage156.Value := IniRead(dirIni, "ROGUE", "Surprise")
CheckBox_Storage157.Value := IniRead(dirIni, "ROGUE", "Synergy")
CheckBox_Storage158.Value := IniRead(dirIni, "ROGUE", "Uncanny Resilience")
CheckBox_Storage159.Value := IniRead(dirIni, "ROGUE", "Uncanny Treachery")
CheckBox_Storage160.Value := IniRead(dirIni, "ROGUE", "Unstable Imbuements")
CheckBox_Storage161.Value := IniRead(dirIni, "ROGUE", "Volatile Shadows")
CheckBox_Storage162.Value := IniRead(dirIni, "ROGUE", "Bladedancer")
CheckBox_Storage163.Value := IniRead(dirIni, "ROGUE", "Blast Trapper")
CheckBox_Storage164.Value := IniRead(dirIni, "ROGUE", "Cheat")
CheckBox_Storage165.Value := IniRead(dirIni, "ROGUE", "Energizing")
CheckBox_Storage166.Value := IniRead(dirIni, "ROGUE", "Enshrouding")
CheckBox_Storage167.Value := IniRead(dirIni, "ROGUE", "Escape Artist")
CheckBox_Storage168.Value := IniRead(dirIni, "ROGUE", "Frostbitten")
CheckBox_Storage169.Value := IniRead(dirIni, "ROGUE", "Icy Alchemist")
CheckBox_Storage170.Value := IniRead(dirIni, "ROGUE", "Infiltrator")
CheckBox_Storage171.Value := IniRead(dirIni, "ROGUE", "Mangler")
CheckBox_Storage172.Value := IniRead(dirIni, "ROGUE", "Opportunist")
CheckBox_Storage173.Value := IniRead(dirIni, "ROGUE", "Ravager")
CheckBox_Storage174.Value := IniRead(dirIni, "ROGUE", "Ravenous")
CheckBox_Storage175.Value := IniRead(dirIni, "ROGUE", "Shadowslicer")
CheckBox_Storage176.Value := IniRead(dirIni, "ROGUE", "Snap Frozen")
CheckBox_Storage177.Value := IniRead(dirIni, "ROGUE", "Toxic Alchemist")
CheckBox_Storage178.Value := IniRead(dirIni, "ROGUE", "Trickshot")
CheckBox_Storage179.Value := IniRead(dirIni, "ROGUE", "Trickster")
CheckBox_Storage180.Value := IniRead(dirIni, "ROGUE", "Umbrous")
CheckBox_Storage181.Value := IniRead(dirIni, "ROGUE", "Vengeful")


;-----------------------------SORCERER---------------------------------------------
Tab.UseTab(6)
CheckBox_Storage182 := myGui.Add("CheckBox", "vChkAbundantEnergy w150 h23", "Abundant Energy")
CheckBox_Storage183 := myGui.Add("CheckBox", "vChkAncientFlame w150 h23", "Ancient Flame")
CheckBox_Storage184 := myGui.Add("CheckBox", "vChkArmageddon w150 h23", "Armageddon")
CheckBox_Storage185 := myGui.Add("CheckBox", "vChkBindingEmbers w150 h23", "Binding Embers")
CheckBox_Storage186 := myGui.Add("CheckBox", "vChkBitingCold w150 h23", "Biting Cold")
CheckBox_Storage187 := myGui.Add("CheckBox", "vChkConcentration w150 h23", "Concentration")
CheckBox_Storage188 := myGui.Add("CheckBox", "vChkConflagration w150 h23", "Conflagration")
CheckBox_Storage189 := myGui.Add("CheckBox", "vChkControl w150 h23", "Control")
CheckBox_Storage190 := myGui.Add("CheckBox", "vChkEfficiency w150 h23", "Efficiency")
CheckBox_Storage191 := myGui.Add("CheckBox", "vChkEngulfingFlames w150 h23", "Engulfing Flames")
CheckBox_Storage192 := myGui.Add("CheckBox", "vChkFortune w150 h23", "Fortune")
CheckBox_Storage193 := myGui.Add("CheckBox", "vChkFrozenMemories w150 h23", "Frozen Memories")
CheckBox_Storage194 := myGui.Add("CheckBox", "vChkFrozenOrbit w150 h23", "Frozen Orbit")
CheckBox_Storage195 := myGui.Add("CheckBox", "vChkFrozenWake x+10 y+-373 w150 h23", "Frozen Wake")
CheckBox_Storage196 := myGui.Add("CheckBox", "vChkOverwhelmingCurrents w150 h23", "Overwhelming Currents")
CheckBox_Storage197 := myGui.Add("CheckBox", "vChkPiercingCold w150 h23", "Piercing Cold")
CheckBox_Storage198 := myGui.Add("CheckBox", "vChkShatteredStars w150 h23", "Shattered Stars")
CheckBox_Storage199 := myGui.Add("CheckBox", "vChkSingedExtremities w150 h23", "Singed Extremities")
CheckBox_Storage200 := myGui.Add("CheckBox", "vChkSplinteringEnergy w150 h23", "Splintering Energy")
CheckBox_Storage201 := myGui.Add("CheckBox", "vChkStaticCling w150 h23", "Static Cling")
CheckBox_Storage202 := myGui.Add("CheckBox", "vChkThreeCurses w150 h23", "Three Curses")
CheckBox_Storage203 := myGui.Add("CheckBox", "vChkBoundingConduit w150 h23", "Bounding Conduit")
CheckBox_Storage204 := myGui.Add("CheckBox", "vChkFrozenTundra w150 h23", "Frozen Tundra")
CheckBox_Storage205 := myGui.Add("CheckBox", "vChkUnbrokenTether w150 h23", "Unbroken Tether")
CheckBox_Storage206 := myGui.Add("CheckBox", "vChkUnwavering w150 h23", "Unwavering")
CheckBox_Storage207 := myGui.Add("CheckBox", "vChkCharged w150 h23", "Charged")
CheckBox_Storage208 := myGui.Add("CheckBox", "vChkElementalist x+10 y+-373 w150 h23", "Elementalist")
CheckBox_Storage209 := myGui.Add("CheckBox", "vChkEncased w150 h23", "Encased")
CheckBox_Storage210 := myGui.Add("CheckBox", "vChkEverliving w150 h23", "Everliving")
CheckBox_Storage211 := myGui.Add("CheckBox", "vChkFlamewalker w150 h23", "Flamewalker")
CheckBox_Storage212 := myGui.Add("CheckBox", "vChkFrostblitz w150 h23", "Frostblitz")
CheckBox_Storage213 := myGui.Add("CheckBox", "vChkGlacial w150 h23", "Glacial")
CheckBox_Storage214 := myGui.Add("CheckBox", "vChkGravitational w150 h23", "Gravitational")
CheckBox_Storage215 := myGui.Add("CheckBox", "vChkIncendiary w150 h23", "Incendiary")
CheckBox_Storage216 := myGui.Add("CheckBox", "vChkMageLord w150 h23", "Mage Lord")
CheckBox_Storage217 := myGui.Add("CheckBox", "vChkProdigy w150 h23", "Prodigy")
CheckBox_Storage218 := myGui.Add("CheckBox", "vChkRecharging w150 h23", "Recharging")
CheckBox_Storage219 := myGui.Add("CheckBox", "vChkSerpentine w150 h23", "Serpentine")
CheckBox_Storage220 := myGui.Add("CheckBox", "vChkShattered w150 h23", "Shattered")
CheckBox_Storage221 := myGui.Add("CheckBox", "vChkSnowguard x+10 y+-373 w150 h23", "Snowguard")
CheckBox_Storage222 := myGui.Add("CheckBox", "vChkSnowveiled w150 h23", "Snowveiled")
CheckBox_Storage223 := myGui.Add("CheckBox", "vChkStable w150 h23", "Stable")
CheckBox_Storage224 := myGui.Add("CheckBox", "vChkStormSwell w150 h23", "Storm Swell")

CheckBox_Storage182.Value := IniRead(dirIni, "SORCERER", "Abundant Energy")
CheckBox_Storage183.Value := IniRead(dirIni, "SORCERER", "Ancient Flame")
CheckBox_Storage184.Value := IniRead(dirIni, "SORCERER", "Armageddon")
CheckBox_Storage185.Value := IniRead(dirIni, "SORCERER", "Binding Embers")
CheckBox_Storage186.Value := IniRead(dirIni, "SORCERER", "Biting Cold")
CheckBox_Storage187.Value := IniRead(dirIni, "SORCERER", "Concentration")
CheckBox_Storage188.Value := IniRead(dirIni, "SORCERER", "Conflagration")
CheckBox_Storage189.Value := IniRead(dirIni, "SORCERER", "Control")
CheckBox_Storage190.Value := IniRead(dirIni, "SORCERER", "Efficiency")
CheckBox_Storage191.Value := IniRead(dirIni, "SORCERER", "Engulfing Flames")
CheckBox_Storage192.Value := IniRead(dirIni, "SORCERER", "Fortune")
CheckBox_Storage193.Value := IniRead(dirIni, "SORCERER", "Frozen Memories")
CheckBox_Storage194.Value := IniRead(dirIni, "SORCERER", "Frozen Orbit")
CheckBox_Storage195.Value := IniRead(dirIni, "SORCERER", "Frozen Wake")
CheckBox_Storage196.Value := IniRead(dirIni, "SORCERER", "Overwhelming Currents")
CheckBox_Storage197.Value := IniRead(dirIni, "SORCERER", "Piercing Cold")
CheckBox_Storage198.Value := IniRead(dirIni, "SORCERER", "Shattered Stars")
CheckBox_Storage199.Value := IniRead(dirIni, "SORCERER", "Singed Extremities")
CheckBox_Storage200.Value := IniRead(dirIni, "SORCERER", "Splintering Energy")
CheckBox_Storage201.Value := IniRead(dirIni, "SORCERER", "Static Cling")
CheckBox_Storage202.Value := IniRead(dirIni, "SORCERER", "Three Curses")
CheckBox_Storage203.Value := IniRead(dirIni, "SORCERER", "Bounding Conduit")
CheckBox_Storage204.Value := IniRead(dirIni, "SORCERER", "Frozen Tundra")
CheckBox_Storage205.Value := IniRead(dirIni, "SORCERER", "Unbroken Tether")
CheckBox_Storage206.Value := IniRead(dirIni, "SORCERER", "Unwavering")
CheckBox_Storage207.Value := IniRead(dirIni, "SORCERER", "Charged")
CheckBox_Storage208.Value := IniRead(dirIni, "SORCERER", "Elementalist")
CheckBox_Storage209.Value := IniRead(dirIni, "SORCERER", "Encased")
CheckBox_Storage210.Value := IniRead(dirIni, "SORCERER", "Everliving")
CheckBox_Storage211.Value := IniRead(dirIni, "SORCERER", "Flamewalker")
CheckBox_Storage212.Value := IniRead(dirIni, "SORCERER", "Frostblitz")
CheckBox_Storage213.Value := IniRead(dirIni, "SORCERER", "Glacial")
CheckBox_Storage214.Value := IniRead(dirIni, "SORCERER", "Gravitational")
CheckBox_Storage215.Value := IniRead(dirIni, "SORCERER", "Incendiary")
CheckBox_Storage216.Value := IniRead(dirIni, "SORCERER", "Mage Lord")
CheckBox_Storage217.Value := IniRead(dirIni, "SORCERER", "Prodigy")
CheckBox_Storage218.Value := IniRead(dirIni, "SORCERER", "Recharging")
CheckBox_Storage219.Value := IniRead(dirIni, "SORCERER", "Serpentine")
CheckBox_Storage220.Value := IniRead(dirIni, "SORCERER", "Shattered")
CheckBox_Storage221.Value := IniRead(dirIni, "SORCERER", "Snowguard")
CheckBox_Storage222.Value := IniRead(dirIni, "SORCERER", "Snowveiled")
CheckBox_Storage223.Value := IniRead(dirIni, "SORCERER", "Stable")
CheckBox_Storage224.Value := IniRead(dirIni, "SORCERER", "Storm Swell")


;-----------------------------------------------------------------------------
Tab.UseTab()
ogcButtonApplyandReload := 	myGui.Add("Button", "x10 y420 w150 h45", "Apply")
myGui.Add("Text", "x350 y430 w100 h25", "Resolution:")
List_Storage1 := 	myGui.Add("DropDownList", "x415 y428 w150 h85", ["5120x1440","1920x1080"])
List_Storage1.Value := IniRead(dirIni, "OPTIONS", "Resolution")

ogcButtonApplyandReload.OnEvent("Click", OnEventHandler)

myGui.Title := "Diablo IV Stash Finder"
myGui.OnEvent('Close', Hide)
myGui.Show()
WinSetAlwaysOnTop 1, "Diablo IV Stash Finder"
WinHide "Diablo IV Stash Finder"

if resolution = 1
{
myGui2 := Gui()
myGui2.Title := "buttons"
myGui2.MarginX := 0
myGui2.MarginY := 0
ogcButtonOLoptions := 	myGui2.Add("Button", "x0 y0 w150 h25", "Options")
ogcButtonOLrec := 		myGui2.Add("Button", "x0 y30 w150 h25", "Record")
ogcButtonOLall := 		myGui2.Add("Button", "x0 y60 w150 h25", "Show All")
ogcButtonOLdups := 		myGui2.Add("Button", "x0 y90 w150 h25", "Show Dups")
ogcButtonOLasp := 		myGui2.Add("Button", "x0 y120 w150 h25", "Show Aspects")
ogcButtonOLclose := 	myGui2.Add("Button", "x0 y150 w150 h25", "Close Overlay")
ogcButtonOLexit := 		myGui2.Add("Button", "x0 y180 w150 h25", "Exit Program")
ogcButtonOLhelp := 		myGui2.Add("Button", "x0 y210 w150 h25", "Help")
}

else
{
myGui2 := Gui()
myGui2.Title := "buttons"
myGui2.MarginX := 0
myGui2.MarginY := 0
ogcButtonOLoptions := 	myGui2.Add("Button", "x0 y0 w90 h25", "Options")
ogcButtonOLrec := 		myGui2.Add("Button", "x0 y30 w90 h25", "Record")
ogcButtonOLall := 		myGui2.Add("Button", "x0 y60 w90 h25", "Show All")
ogcButtonOLdups := 		myGui2.Add("Button", "x0 y90 w90 h25", "Show Dups")
ogcButtonOLasp := 		myGui2.Add("Button", "x0 y120 w90 h25", "Show Aspects")
ogcButtonOLclose := 	myGui2.Add("Button", "x0 y150 w90 h25", "Close Overlay")
ogcButtonOLexit := 		myGui2.Add("Button", "x0 y180 w90 h25", "Exit Program")
ogcButtonOLhelp := 		myGui2.Add("Button", "x0 y210 w90 h25", "Help")
}

ogcButtonOLoptions.OnEvent("Click", Options)
ogcButtonOLrec.OnEvent("Click", Record)
ogcButtonOLall.OnEvent("Click", ShowAll)
ogcButtonOLdups.OnEvent("Click", ShowDups)
ogcButtonOLasp.OnEvent("Click", ShowAspects)
ogcButtonOLclose.OnEvent("Click", StashOverlay)
ogcButtonOLexit.OnEvent("Click", (*) => ExitApp())
ogcButtonOLhelp.OnEvent("Click", Help)

myGui2.BackColor := "EEAA99"
WinSetTransColor("EEAA99", myGui2)
myGui2.Show()
if resolution = 1
	myGui2.Move(410,1070)
else
	myGui2.Move(20,780)
WinSetStyle "-0xC40000", "buttons"
WinSetAlwaysOnTop 1, "buttons"

myGui3 := Gui()
myGui3.Title := "minmax"
myGui3.MarginX := 0
myGui3.MarginY := 0
ogcminmax := myGui3.Add("Button","x0 y150 w35 h35", "+")
ogcminmax.OnEvent("Click", ChangeState)

myGui3.BackColor := "EEAA99"
WinSetTransColor("EEAA99", myGui3)
myGui3.Show()
if resolution = 1
	myGui3.Move(401,1254)
else
	myGui3.Move(0,895)
WinSetStyle "-0xC40000", "minmax"
WinSetAlwaysOnTop 1, "minmax"

myGui4 := Gui() ;Loading...

Return

SaveValue(box)
{
	IniWrite(box.Value, dirIni, "ALL", "Ghost Walker")
}

OnEventHandler(*)
{

; [OPTIONS]
resolution := List_Storage1.Value
; [ALL]
ghostwalker := checkbox_storage1.Value
windStriker := checkbox_storage2.Value
sharedMisery := checkbox_storage3.Value
umbral := checkbox_storage4.Value
edgemaster := checkbox_storage5.Value
rapid := checkbox_storage6.Value
needleFlare := checkbox_storage7.Value
innerCalm := checkbox_storage8.Value
expectant := checkbox_storage9.Value
retribution := checkbox_storage10.Value
might := checkbox_storage11.Value
disobedience := checkbox_storage12.Value
deflectingBarrier := checkbox_storage13.Value
eluding := checkbox_storage14.Value
protector := checkbox_storage15.Value
crowdedSage := checkbox_storage16.Value
protecting := checkbox_storage17.Value
accelerating := checkbox_storage18.Value
conceited := checkbox_storage19.Value
smiting := checkbox_storage20.Value
assimilation := checkbox_storage21.Value
starlight := checkbox_storage22.Value
exploiter := checkbox_storage23.Value

; [BARBARIAN]
perpetualStomping := checkbox_storage24.Value
relentlessBerserker := checkbox_storage25.Value
echoingFury := checkbox_storage26.Value
relentlessArmsmaster := checkbox_storage27.Value
brawler := checkbox_storage28.Value
veteranBrawler := checkbox_storage29.Value
berserkRipping := checkbox_storage30.Value
ancestralForce := checkbox_storage31.Value
deathwish := checkbox_storage32.Value
direWhirlwind := checkbox_storage33.Value
ancestralEchoes := checkbox_storage34.Value
earthstriker := checkbox_storage35.Value
ironWarrior := checkbox_storage36.Value
ironBlood := checkbox_storage37.Value
numbingWrath := checkbox_storage38.Value
bulKathos := checkbox_storage39.Value
anemia := checkbox_storage40.Value
unrelentingFury := checkbox_storage41.Value
slaking := checkbox_storage42.Value
temperingBlows := checkbox_storage43.Value
steadfastBerserker := checkbox_storage44.Value
devilish := checkbox_storage45.Value
dustdevil := checkbox_storage46.Value
earthquake := checkbox_storage47.Value
burningRage := checkbox_storage48.Value
encroachingWrath := checkbox_storage49.Value
limitlessRage := checkbox_storage50.Value
skullbreaker := checkbox_storage51.Value
windlasher := checkbox_storage52.Value
bearClan := checkbox_storage53.Value
boldChieftain := checkbox_storage54.Value
berserkFury := checkbox_storage55.Value
giantStrides := checkbox_storage56.Value
luckbringer := checkbox_storage57.Value
graspingWhirlwind := checkbox_storage58.Value
weaponMaster := checkbox_storage59.Value
battlemad := checkbox_storage60.Value

; [DRUID]
mendingStone := CheckBox_Storage61.Value
metamorphicStone := CheckBox_Storage62.Value
naturalBalance := CheckBox_Storage63.Value
quicksand := CheckBox_Storage64.Value
retaliation := CheckBox_Storage65.Value
alpha := CheckBox_Storage66.Value
blurredBeast := CheckBox_Storage67.Value
calmBreeze := CheckBox_Storage68.Value
changelingsDebt := CheckBox_Storage69.Value
darkHowl := CheckBox_Storage70.Value
rampagingWerebeast := CheckBox_Storage71.Value
stampede := CheckBox_Storage72.Value
tempest := CheckBox_Storage73.Value
trampledEarth := CheckBox_Storage74.Value
unsatiated := CheckBox_Storage75.Value
ursineHorror := CheckBox_Storage76.Value
wildrage := CheckBox_Storage77.Value
balanced := CheckBox_Storage78.Value
ballistic := CheckBox_Storage79.Value
crashstone := CheckBox_Storage80.Value
direWolf := CheckBox_Storage81.Value
earthguard := CheckBox_Storage82.Value
lightningDancer := CheckBox_Storage83.Value
mangled := CheckBox_Storage84.Value
mightyStorm := CheckBox_Storage85.Value
nighthowler := CheckBox_Storage86.Value
overcharged := CheckBox_Storage87.Value
runeworkersConduit := CheckBox_Storage88.Value
seismicShift := CheckBox_Storage89.Value
shepherd := CheckBox_Storage90.Value
shockwave := CheckBox_Storage91.Value
skinwalker := CheckBox_Storage92.Value
stormchaser := CheckBox_Storage93.Value
stormclaw := CheckBox_Storage94.Value
stormshifter := CheckBox_Storage95.Value
symbiotic := CheckBox_Storage96.Value
vigorous := CheckBox_Storage97.Value
naturesSavagery := CheckBox_Storage98.Value

; [NECROMANCER]
burstingBones := checkbox_storage99.Value ; 99 storage
decay := checkbox_storage100.Value
empoweringReaper := checkbox_storage101.Value
explosiveMist := checkbox_storage102.Value
exposedFlesh := checkbox_storage103.Value
frenziedDead := checkbox_storage104.Value
graspingVeins := checkbox_storage105.Value
hardenedBones := checkbox_storage106.Value
hungryBlood := checkbox_storage107.Value
plungingDarkness := checkbox_storage108.Value
potentBlood := checkbox_storage109.Value
rathmasChosen := checkbox_storage110.Value
reanimation := checkbox_storage111.Value
serration := checkbox_storage112.Value
shieldingStorm := checkbox_storage113.Value
swellingCurse := checkbox_storage114.Value
torment := checkbox_storage115.Value
ultimateShadow := checkbox_storage116.Value
untimelyDeath := checkbox_storage117.Value
damned := checkbox_storage118.Value
embalmer := checkbox_storage119.Value
void := checkbox_storage120.Value
blighted := checkbox_storage121.Value
bloodGetter := checkbox_storage122.Value
bloodSeeker := checkbox_storage123.Value
bloodSoaked := checkbox_storage124.Value
bloodBathed := checkbox_storage125.Value
cadaverous := checkbox_storage126.Value
coldbringer := checkbox_storage127.Value
fastblood := checkbox_storage128.Value
fleshRending := checkbox_storage129.Value
hulking := checkbox_storage130.Value
osseous := checkbox_storage131.Value
requiem := checkbox_storage132.Value
rotting := checkbox_storage133.Value
sacrificial := checkbox_storage134.Value
splintering := checkbox_storage135.Value
tidal := checkbox_storage136.Value
torturous := checkbox_storage137.Value
unyieldingCommander := checkbox_storage138.Value
viscous := checkbox_storage139.Value

; [ROGUE]
arrowStorms := CheckBox_Storage140.Value
branchingVolleys := CheckBox_Storage141.Value
burstingVenoms := CheckBox_Storage142.Value
corruption := CheckBox_Storage143.Value
cruelSustenance := CheckBox_Storage144.Value
elusiveMenace := CheckBox_Storage145.Value
encirclingBlades := CheckBox_Storage146.Value
explosiveVerve := CheckBox_Storage147.Value
imitatedImbuement := CheckBox_Storage148.Value
lethalDusk := CheckBox_Storage149.Value
noxiousIce := CheckBox_Storage150.Value
quickeningFog := CheckBox_Storage151.Value
quickening := CheckBox_Storage152.Value
repeating := CheckBox_Storage153.Value
siphonedVictuals := CheckBox_Storage154.Value
stolenVigor := CheckBox_Storage155.Value
surprise := CheckBox_Storage156.Value
synergy := CheckBox_Storage157.Value
uncannyResilience := CheckBox_Storage158.Value
uncannyTreachery := CheckBox_Storage159.Value
unstableImbuements := CheckBox_Storage160.Value
volatileShadows := CheckBox_Storage161.Value
bladedancer := CheckBox_Storage162.Value
blastTrapper := CheckBox_Storage163.Value
cheat := CheckBox_Storage164.Value
energizing := CheckBox_Storage165.Value
enshrouding := CheckBox_Storage166.Value
escapeArtist := CheckBox_Storage167.Value
frostbitten := CheckBox_Storage168.Value
icyAlchemist := CheckBox_Storage169.Value
infiltrator := CheckBox_Storage170.Value
mangler := CheckBox_Storage171.Value
opportunist := CheckBox_Storage172.Value
ravager := CheckBox_Storage173.Value
ravenous := CheckBox_Storage174.Value
shadowslicer := CheckBox_Storage175.Value
snapFrozen := CheckBox_Storage176.Value
toxicAlchemist := CheckBox_Storage177.Value
trickshot := CheckBox_Storage178.Value
trickster := CheckBox_Storage179.Value
umbrous := CheckBox_Storage180.Value
vengeful := CheckBox_Storage181.Value

; [SORCERER]
abundantEnergy := CheckBox_Storage182.Value
ancientFlame := CheckBox_Storage183.Value
armageddon := CheckBox_Storage184.Value
bindingEmbers := CheckBox_Storage185.Value
bitingCold := CheckBox_Storage186.Value
concentration := CheckBox_Storage187.Value
conflagration := CheckBox_Storage188.Value
control := CheckBox_Storage189.Value
efficiency := CheckBox_Storage190.Value
engulfingFlames := CheckBox_Storage191.Value
fortune := CheckBox_Storage192.Value
frozenMemories := CheckBox_Storage193.Value
frozenOrbit := CheckBox_Storage194.Value
frozenWake := CheckBox_Storage195.Value
overwhelmingCurrents := CheckBox_Storage196.Value
piercingCold := CheckBox_Storage197.Value
shatteredStars := CheckBox_Storage198.Value
singedExtremities := CheckBox_Storage199.Value
splinteringEnergy := CheckBox_Storage200.Value
staticCling := CheckBox_Storage201.Value
threeCurses := CheckBox_Storage202.Value
boundingConduit := CheckBox_Storage203.Value
frozenTundra := CheckBox_Storage204.Value
unbrokenTether := CheckBox_Storage205.Value
unwavering := CheckBox_Storage206.Value
charged := CheckBox_Storage207.Value
elementalist := CheckBox_Storage208.Value
encased := CheckBox_Storage209.Value
everliving := CheckBox_Storage210.Value
flamewalker := CheckBox_Storage211.Value
frostblitz := CheckBox_Storage212.Value
glacial := CheckBox_Storage213.Value
gravitational := CheckBox_Storage214.Value
incendiary := CheckBox_Storage215.Value
mageLord := CheckBox_Storage216.Value
prodigy := CheckBox_Storage217.Value
recharging := CheckBox_Storage218.Value
serpentine := CheckBox_Storage219.Value
shattered := CheckBox_Storage220.Value
snowguard := CheckBox_Storage221.Value
snowveiled := CheckBox_Storage222.Value
stable := CheckBox_Storage223.Value
stormSwell := CheckBox_Storage224.Value



; OPTIONS	
IniWrite(resolution, dirIni, "OPTIONS", "Resolution")
; ALL
IniWrite(ghostwalker, dirIni, "ALL", "Ghost Walker")
IniWrite(windStriker, dirIni, "ALL", "Wind Striker")
IniWrite(sharedMisery, dirIni, "ALL", "Shared Misery")
IniWrite(umbral, dirIni, "ALL", "Umbral")
IniWrite(edgemaster, dirIni, "ALL", "Edgemaster")
IniWrite(rapid, dirIni, "ALL", "Rapid")
IniWrite(needleFlare, dirIni, "ALL", "Needle Flare")
IniWrite(innerCalm, dirIni, "ALL", "Inner Calm")
IniWrite(expectant, dirIni, "ALL", "Expectant")
IniWrite(retribution, dirIni, "ALL", "Retribution")
IniWrite(might, dirIni, "ALL", "Might")
IniWrite(disobedience, dirIni, "ALL", "Disobedience")
IniWrite(deflectingBarrier, dirIni, "ALL", "Deflecting Barrier")
IniWrite(eluding, dirIni, "ALL", "Eluding")
IniWrite(protector, dirIni, "ALL", "Protector")
IniWrite(crowdedSage, dirIni, "ALL", "Crowded Sage")
IniWrite(protecting, dirIni, "ALL", "Protecting")
IniWrite(accelerating, dirIni, "ALL", "Accelerating")
IniWrite(conceited, dirIni, "ALL", "Conceited")
IniWrite(smiting, dirIni, "ALL", "Smiting")
IniWrite(assimilation, dirIni, "ALL", "Assimilation")
IniWrite(starlight, dirIni, "ALL", "Starlight")
IniWrite(exploiter, dirIni, "ALL", "Exploiter")

; BARBARIAN
IniWrite(perpetualStomping, dirIni, "BARBARIAN", "Perpetual Stomping")
IniWrite(relentlessBerserker, dirIni, "BARBARIAN", "Relentless Berserker")
IniWrite(echoingFury, dirIni, "BARBARIAN", "Echoing Fury")
IniWrite(relentlessArmsmaster, dirIni, "BARBARIAN", "Relentless Armsmaster")
IniWrite(brawler, dirIni, "BARBARIAN", "Brawler")
IniWrite(veteranBrawler, dirIni, "BARBARIAN", "Veteran Brawler")
IniWrite(berserkRipping, dirIni, "BARBARIAN", "Berserk Ripping")
IniWrite(ancestralForce, dirIni, "BARBARIAN", "Ancestral Force")
IniWrite(deathwish, dirIni, "BARBARIAN", "Deathwish")
IniWrite(direWhirlwind, dirIni, "BARBARIAN", "Dire Whirlwind")
IniWrite(ancestralEchoes, dirIni, "BARBARIAN", "Ancestral Echoes")
IniWrite(earthstriker, dirIni, "BARBARIAN", "Earthstriker")
IniWrite(ironWarrior, dirIni, "BARBARIAN", "Iron Warrior")
IniWrite(ironBlood, dirIni, "BARBARIAN", "Iron Blood")
IniWrite(numbingWrath, dirIni, "BARBARIAN", "Numbing Wrath")
IniWrite(bulKathos, dirIni, "BARBARIAN", "BulKathos")
IniWrite(anemia, dirIni, "BARBARIAN", "Anemia")
IniWrite(unrelentingFury, dirIni, "BARBARIAN", "Unrelenting Fury")
IniWrite(slaking, dirIni, "BARBARIAN", "Slaking")
IniWrite(temperingBlows, dirIni, "BARBARIAN", "Tempering Blows")
IniWrite(steadfastBerserker, dirIni, "BARBARIAN", "Steadfast Berserker")
IniWrite(devilish, dirIni, "BARBARIAN", "Devilish")
IniWrite(dustdevil, dirIni, "BARBARIAN", "Dustdevil")
IniWrite(earthquake, dirIni, "BARBARIAN", "Earthquake")
IniWrite(burningRage, dirIni, "BARBARIAN", "Burning Rage")
IniWrite(encroachingWrath, dirIni, "BARBARIAN", "Encroaching Wrath")
IniWrite(limitlessRage, dirIni, "BARBARIAN", "Limitless Rage")
IniWrite(skullbreaker, dirIni, "BARBARIAN", "Skullbreaker")
IniWrite(windlasher, dirIni, "BARBARIAN", "Windlasher")
IniWrite(bearClan, dirIni, "BARBARIAN", "Bear Clan")
IniWrite(boldChieftain, dirIni, "BARBARIAN", "Bold Chieftain")
IniWrite(berserkFury, dirIni, "BARBARIAN", "Berserk Fury")
IniWrite(giantStrides, dirIni, "BARBARIAN", "Giant Strides")
IniWrite(luckbringer, dirIni, "BARBARIAN", "Luckbringer")
IniWrite(graspingWhirlwind, dirIni, "BARBARIAN", "Grasping Whirlwind")
IniWrite(weaponMaster, dirIni, "BARBARIAN", "Weapon Master")
IniWrite(battlemad, dirIni, "BARBARIAN", "Battle-mad")

; DRUID
IniWrite(mendingStone, dirIni, "DRUID", "Mending Stone")
IniWrite(metamorphicStone, dirIni, "DRUID", "Metamorphic Stone")
IniWrite(naturalBalance, dirIni, "DRUID", "Natural Balance")
IniWrite(quicksand, dirIni, "DRUID", "Quicksand")
IniWrite(retaliation, dirIni, "DRUID", "Retaliation")
IniWrite(alpha, dirIni, "DRUID", "Alpha")
IniWrite(blurredBeast, dirIni, "DRUID", "Blurred Beast")
IniWrite(calmBreeze, dirIni, "DRUID", "Calm Breeze")
IniWrite(changelingsDebt, dirIni, "DRUID", "Changelings Debt")
IniWrite(darkHowl, dirIni, "DRUID", "Dark Howl")
IniWrite(rampagingWerebeast, dirIni, "DRUID", "Rampaging Werebeast")
IniWrite(stampede, dirIni, "DRUID", "Stampede")
IniWrite(tempest, dirIni, "DRUID", "Tempest")
IniWrite(trampledEarth, dirIni, "DRUID", "Trampled Earth")
IniWrite(unsatiated, dirIni, "DRUID", "Unsatiated")
IniWrite(ursineHorror, dirIni, "DRUID", "Ursine Horror")
IniWrite(wildrage, dirIni, "DRUID", "Wildrage")
IniWrite(balanced, dirIni, "DRUID", "Balanced")
IniWrite(ballistic, dirIni, "DRUID", "Ballistic")
IniWrite(crashstone, dirIni, "DRUID", "Crashstone")
IniWrite(direWolf, dirIni, "DRUID", "Dire Wolf")
IniWrite(earthguard, dirIni, "DRUID", "Earthguard")
IniWrite(lightningDancer, dirIni, "DRUID", "Lightning Dancer")
IniWrite(mangled, dirIni, "DRUID", "Mangled")
IniWrite(mightyStorm, dirIni, "DRUID", "Mighty Storm")
IniWrite(nighthowler, dirIni, "DRUID", "Nighthowler")
IniWrite(overcharged, dirIni, "DRUID", "Overcharged")
IniWrite(runeworkersConduit, dirIni, "DRUID", "Runeworkers Conduit")
IniWrite(seismicShift, dirIni, "DRUID", "Seismic Shift")
IniWrite(shepherd, dirIni, "DRUID", "Shepherd")
IniWrite(shockwave, dirIni, "DRUID", "Shockwave")
IniWrite(skinwalker, dirIni, "DRUID", "Skinwalker")
IniWrite(stormchaser, dirIni, "DRUID", "Stormchaser")
IniWrite(stormclaw, dirIni, "DRUID", "Stormclaw")
IniWrite(stormshifter, dirIni, "DRUID", "Stormshifter")
IniWrite(symbiotic, dirIni, "DRUID", "Symbiotic")
IniWrite(vigorous, dirIni, "DRUID", "Vigorous")
IniWrite(naturesSavagery, dirIni, "DRUID", "Natures Savagery")


; NECROMANCER
IniWrite(burstingBones, dirIni, "NECROMANCER", "Bursting Bones")
IniWrite(decay, dirIni, "NECROMANCER", "Decay")
IniWrite(empoweringReaper, dirIni, "NECROMANCER", "Empowering Reaper")
IniWrite(explosiveMist, dirIni, "NECROMANCER", "Explosive Mist")
IniWrite(exposedFlesh, dirIni, "NECROMANCER", "Exposed Flesh")
IniWrite(frenziedDead, dirIni, "NECROMANCER", "Frenzied Dead")
IniWrite(graspingVeins, dirIni, "NECROMANCER", "Grasping Veins")
IniWrite(hardenedBones, dirIni, "NECROMANCER", "Hardened Bones")
IniWrite(hungryBlood, dirIni, "NECROMANCER", "Hungry Blood")
IniWrite(plungingDarkness, dirIni, "NECROMANCER", "Plunging Darkness")
IniWrite(potentBlood, dirIni, "NECROMANCER", "Potent Blood")
IniWrite(rathmasChosen, dirIni, "NECROMANCER", "Rathmas Chosen")
IniWrite(reanimation, dirIni, "NECROMANCER", "Reanimation")
IniWrite(serration, dirIni, "NECROMANCER", "Serration")
IniWrite(shieldingStorm, dirIni, "NECROMANCER", "Shielding Storm")
IniWrite(swellingCurse, dirIni, "NECROMANCER", "Swelling Curse")
IniWrite(torment, dirIni, "NECROMANCER", "Torment")
IniWrite(ultimateShadow, dirIni, "NECROMANCER", "Ultimate Shadow")
IniWrite(untimelyDeath, dirIni, "NECROMANCER", "Untimely Death")
IniWrite(damned, dirIni, "NECROMANCER", "Damned")
IniWrite(embalmer, dirIni, "NECROMANCER", "Embalmer")
IniWrite(void, dirIni, "NECROMANCER", "Void")
IniWrite(blighted, dirIni, "NECROMANCER", "Blighted")
IniWrite(bloodGetter, dirIni, "NECROMANCER", "Blood Getter")
IniWrite(bloodSeeker, dirIni, "NECROMANCER", "Blood Seeker")
IniWrite(bloodSoaked, dirIni, "NECROMANCER", "Blood Soaked")
IniWrite(bloodBathed, dirIni, "NECROMANCER", "Blood Bathed")
IniWrite(cadaverous, dirIni, "NECROMANCER", "Cadaverous")
IniWrite(coldbringer, dirIni, "NECROMANCER", "Coldbringer")
IniWrite(fastblood, dirIni, "NECROMANCER", "Fastblood")
IniWrite(fleshRending, dirIni, "NECROMANCER", "Flesh Rending")
IniWrite(hulking, dirIni, "NECROMANCER", "Hulking")
IniWrite(osseous, dirIni, "NECROMANCER", "Osseous")
IniWrite(requiem, dirIni, "NECROMANCER", "Requiem")
IniWrite(rotting, dirIni, "NECROMANCER", "Rotting")
IniWrite(sacrificial, dirIni, "NECROMANCER", "Sacrificial")
IniWrite(splintering, dirIni, "NECROMANCER", "Splintering")
IniWrite(tidal, dirIni, "NECROMANCER", "Tidal")
IniWrite(torturous, dirIni, "NECROMANCER", "Torturous")
IniWrite(unyieldingCommander, dirIni, "NECROMANCER", "Unyielding Commander")
IniWrite(viscous, dirIni, "NECROMANCER", "Viscous")

; ROGUE
IniWrite(arrowStorms, dirIni, "ROGUE", "Arrow Storms")
IniWrite(branchingVolleys, dirIni, "ROGUE", "Branching Volleys")
IniWrite(burstingVenoms, dirIni, "ROGUE", "Bursting Venoms")
IniWrite(corruption, dirIni, "ROGUE", "Corruption")
IniWrite(cruelSustenance, dirIni, "ROGUE", "Cruel Sustenance")
IniWrite(elusiveMenace, dirIni, "ROGUE", "Elusive Menace")
IniWrite(encirclingBlades, dirIni, "ROGUE", "Encircling Blades")
IniWrite(explosiveVerve, dirIni, "ROGUE", "Explosive Verve")
IniWrite(imitatedImbuement, dirIni, "ROGUE", "Imitated Imbuement")
IniWrite(lethalDusk, dirIni, "ROGUE", "Lethal Dusk")
IniWrite(noxiousIce, dirIni, "ROGUE", "Noxious Ice")
IniWrite(quickeningFog, dirIni, "ROGUE", "Quickening Fog")
IniWrite(quickening, dirIni, "ROGUE", "Quickening")
IniWrite(repeating, dirIni, "ROGUE", "Repeating")
IniWrite(siphonedVictuals, dirIni, "ROGUE", "Siphoned Victuals")
IniWrite(stolenVigor, dirIni, "ROGUE", "Stolen Vigor")
IniWrite(surprise, dirIni, "ROGUE", "Surprise")
IniWrite(synergy, dirIni, "ROGUE", "Synergy")
IniWrite(uncannyResilience, dirIni, "ROGUE", "Uncanny Resilience")
IniWrite(uncannyTreachery, dirIni, "ROGUE", "Uncanny Treachery")
IniWrite(unstableImbuements, dirIni, "ROGUE", "Unstable Imbuements")
IniWrite(volatileShadows, dirIni, "ROGUE", "Volatile Shadows")
IniWrite(bladedancer, dirIni, "ROGUE", "Bladedancer")
IniWrite(blastTrapper, dirIni, "ROGUE", "Blast Trapper")
IniWrite(cheat, dirIni, "ROGUE", "Cheat")
IniWrite(energizing, dirIni, "ROGUE", "Energizing")
IniWrite(enshrouding, dirIni, "ROGUE", "Enshrouding")
IniWrite(escapeArtist, dirIni, "ROGUE", "Escape Artist")
IniWrite(frostbitten, dirIni, "ROGUE", "Frostbitten")
IniWrite(icyAlchemist, dirIni, "ROGUE", "Icy Alchemist")
IniWrite(infiltrator, dirIni, "ROGUE", "Infiltrator")
IniWrite(mangler, dirIni, "ROGUE", "Mangler")
IniWrite(opportunist, dirIni, "ROGUE", "Opportunist")
IniWrite(ravager, dirIni, "ROGUE", "Ravager")
IniWrite(ravenous, dirIni, "ROGUE", "Ravenous")
IniWrite(shadowslicer, dirIni, "ROGUE", "Shadowslicer")
IniWrite(snapFrozen, dirIni, "ROGUE", "Snap Frozen")
IniWrite(toxicAlchemist, dirIni, "ROGUE", "Toxic Alchemist")
IniWrite(trickshot, dirIni, "ROGUE", "Trickshot")
IniWrite(trickster, dirIni, "ROGUE", "Trickster")
IniWrite(umbrous, dirIni, "ROGUE", "Umbrous")
IniWrite(vengeful, dirIni, "ROGUE", "Vengeful")

; SORCERER
IniWrite(abundantEnergy, dirIni, "SORCERER", "Abundant Energy")
IniWrite(ancientFlame, dirIni, "SORCERER", "Ancient Flame")
IniWrite(armageddon, dirIni, "SORCERER", "Armageddon")
IniWrite(bindingEmbers, dirIni, "SORCERER", "Binding Embers")
IniWrite(bitingCold, dirIni, "SORCERER", "Biting Cold")
IniWrite(concentration, dirIni, "SORCERER", "Concentration")
IniWrite(conflagration, dirIni, "SORCERER", "Conflagration")
IniWrite(control, dirIni, "SORCERER", "Control")
IniWrite(efficiency, dirIni, "SORCERER", "Efficiency")
IniWrite(engulfingFlames, dirIni, "SORCERER", "Engulfing Flames")
IniWrite(fortune, dirIni, "SORCERER", "Fortune")
IniWrite(frozenMemories, dirIni, "SORCERER", "Frozen Memories")
IniWrite(frozenOrbit, dirIni, "SORCERER", "Frozen Orbit")
IniWrite(frozenWake, dirIni, "SORCERER", "Frozen Wake")
IniWrite(overwhelmingCurrents, dirIni, "SORCERER", "Overwhelming Currents")
IniWrite(piercingCold, dirIni, "SORCERER", "Piercing Cold")
IniWrite(shatteredStars, dirIni, "SORCERER", "Shattered Stars")
IniWrite(singedExtremities, dirIni, "SORCERER", "Singed Extremities")
IniWrite(splinteringEnergy, dirIni, "SORCERER", "Splintering Energy")
IniWrite(staticCling, dirIni, "SORCERER", "Static Cling")
IniWrite(threeCurses, dirIni, "SORCERER", "Three Curses")
IniWrite(boundingConduit, dirIni, "SORCERER", "Bounding Conduit")
IniWrite(frozenTundra, dirIni, "SORCERER", "Frozen Tundra")
IniWrite(unbrokenTether, dirIni, "SORCERER", "Unbroken Tether")
IniWrite(unwavering, dirIni, "SORCERER", "Unwavering")
IniWrite(charged, dirIni, "SORCERER", "Charged")
IniWrite(elementalist, dirIni, "SORCERER", "Elementalist")
IniWrite(encased, dirIni, "SORCERER", "Encased")
IniWrite(everliving, dirIni, "SORCERER", "Everliving")
IniWrite(flamewalker, dirIni, "SORCERER", "Flamewalker")
IniWrite(frostblitz, dirIni, "SORCERER", "Frostblitz")
IniWrite(glacial, dirIni, "SORCERER", "Glacial")
IniWrite(gravitational, dirIni, "SORCERER", "Gravitational")
IniWrite(incendiary, dirIni, "SORCERER", "Incendiary")
IniWrite(mageLord, dirIni, "SORCERER", "Mage Lord")
IniWrite(prodigy, dirIni, "SORCERER", "Prodigy")
IniWrite(recharging, dirIni, "SORCERER", "Recharging")
IniWrite(serpentine, dirIni, "SORCERER", "Serpentine")
IniWrite(shattered, dirIni, "SORCERER", "Shattered")
IniWrite(snowguard, dirIni, "SORCERER", "Snowguard")
IniWrite(snowveiled, dirIni, "SORCERER", "Snowveiled")
IniWrite(stable, dirIni, "SORCERER", "Stable")
IniWrite(stormSwell, dirIni, "SORCERER", "Storm Swell")

	printAspectsName()
	
	if WinExist("stash")
		WinClose "stash"
	focusDiablo()
	;Reload
}
ChangeState(*)
{
	if WinGetMinMax("buttons") = 0
		WinMinimize "buttons"
	else
		WinRestore "buttons"
	focusDiablo()
}

Hide(*)
{
	WinHide "Diablo IV Stash Finder"
}

Record(*)
{
	pleaseWait("Recording...")
	run A_WorkingDIr . "\py\record.ahk",, "Hide"
	focusDiablo()
	runWait A_WorkingDIr . "\py\takePhoto.py",, "Hide"
	sleep 2000
	WinKill "ProgramRunningAHKms"
	pleaseWait("Cropping images...")
	runWait A_WorkingDIr . "\py\cropText.py",, "Hide"
	WinKill "ProgramRunningAHKms"
	pleaseWait("Reading...")
	runWait A_WorkingDIr . "\py\read.py",, "Hide"
	WinKill "ProgramRunningAHKms"
	pleaseWait("Done")
	sleep 2000
	WinKill "ProgramRunningAHKms"
}

Options(*)
{
	WinShow "Diablo IV Stash Finder"
}

ShowAll(*)
{
	run A_WorkingDIr . "\py\findDups.py",, "Hide"
	runWait A_WorkingDIr . "\py\findAspect.py",, "Hide"
	if WinExist("stash")
		WinClose "stash"
	Run A_WorkingDIr . "\showAll.ahk"
	focusDiablo()
}

ShowDups(*)
{
	runWait A_WorkingDIr . "\py\findDups.py",, "Hide"
	if WinExist("stash")
		WinClose "stash"
	Run A_WorkingDIr . "\showDups.ahk"
	focusDiablo()
}

ShowAspects(*)
{
	runWait A_WorkingDIr . "\py\findAspect.py",, "Hide"
	if WinExist("stash")
		WinClose "stash"
	Run A_WorkingDIr . "\showAspects.ahk"
	focusDiablo()
}

StashOverlay(*)
{
	;DetectHiddenWindows 1
	if WinExist("stash")
		WinClose "stash"
	focusDiablo()
	;DetectHiddenWindows 0
}

Help(*)
{
	Run A_WorkingDir . "\howToUse.png"
}

pleaseWait(infoText)
{
	myGui4 := Gui()
	myGui4.Title := "ProgramRunningAHKms"
	myGui4.BackColor := "000000"
	myGui4.SetFont("s12")
	myGui4.Add("Text", "x10 y10 w100 h20 cWhite", infoText)
	myGui4.Show("w135 h15")
	myGui4.Move(410,1250)
	WinSetStyle "-0xC40000", "ProgramRunningAHKms"
	WinSetAlwaysOnTop 1, "ProgramRunningAHKms"
}
focusDiablo()
{
	if WinExist("Diablo IV")
		WinActivate "Diablo IV"
}

mergeArrays()
{
	combArray := []

	allNames := []
	barbarianNames := []
	druidNames := []
	necromancerNames := []
	rogueNames := []
	sorcererNames := []

	allNames := getAllNames()
	barbarianNames :=  getBarbarianNames()
	druidNames := getDruidNames()
	necromancerNames := getNecromancerNames()
	rogueNames := getRogueNames()
	sorcererNames := getSorcererNames()
	
	totLength := allNames.Length + barbarianNames.Length + druidNames.Length + necromancerNames.Length + rogueNames.Length + sorcererNames.Length
	
	i := 1
	while i <= allNames.Length
	{
		combArray.Push(allNames[i])
		i := i + 1
	}
	i := 1
	while i <= barbarianNames.Length
	{
		combArray.Push(barbarianNames[i])
		i := i + 1
	}
	i := 1
	while i <= druidNames.Length
	{
		combArray.Push(druidNames[i])
		i := i + 1
	}
	i := 1
	while i <= necromancerNames.Length
	{
		combArray.Push(necromancerNames[i])
		i := i + 1
	}
	i := 1
	while i <= rogueNames.Length
	{
		combArray.Push(rogueNames[i])
		i := i + 1
	}
	i := 1
	while i <= sorcererNames.Length
	{
		combArray.Push(sorcererNames[i])
		i := i + 1
	}
	return combArray
}

printAspectsName()
{
	if FileExist(dirAspectName)
		FileDelete dirAspectName

	merArray := mergeArrays()

	i := 1
	while i <= merArray.Length
	{
		variableName := merArray[i][1]
		checkboxStorage1 := merArray[i][2]
		nameInfo := merArray[i][3]
    
		; Get the checkbox value for the current aspect
		checkboxValue1 := checkboxStorage1
    
		; Check if the checkbox value is 1
		if checkboxValue1 = 1
		{
			; Append the variable name to the file
					FileAppend(variableName "`n", dirAspectName)
					FileAppend(nameInfo "`n", dirAspectName)
		}
		i := i + 1
	}
}