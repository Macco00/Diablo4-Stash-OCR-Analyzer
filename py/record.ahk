CoordMode "ToolTip", "Screen"

left := 460
right := 541
top := 360
bot := 480

ToolTip "       Start       ", 460, 424, 1
ToolTip "        End        ", 1195, 940, 2
	
while True
{
	MouseGetPos &xpos, &ypos 
	
	if(xpos > left && xpos < right && ypos > top && ypos < bot)
		break
}

	