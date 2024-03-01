keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

//Player Movement
#region
//Input
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp)
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)
var lastInputDirection = 0

//Movement
xvelocity = lengthdir_x(inputMagnitude * walkSpeed, inputDirection)
yvelocity = lengthdir_y(inputMagnitude * walkSpeed, inputDirection)

if place_meeting(x + xvelocity, y, oWall) {
	xvelocity = 0
}
if place_meeting(x, y + yvelocity, oWall) {
	yvelocity = 0
}

x += xvelocity
y += yvelocity

#endregion

if (inputMagnitude) {
    lastInputDirection = inputDirection;
}
centerY = y + centerYOffset
aimDir = point_direction(x, centerY, mouse_x, mouse_y)

//Sprite Control
#region
image_speed = 1
if xvelocity !=0 image_xscale = sign(xvelocity)
if xvelocity != 0 {
		sprite_index = sPlayerWalk
		/*if !audio_is_playing(sdStep) {
			audio_play_sound(sdStep,1,false)
		}*/
	} else {
		sprite_index = sPlayerIdle
	}

#endregion

