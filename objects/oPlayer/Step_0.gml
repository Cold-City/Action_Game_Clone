keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

//Player Movement
#region
//Input
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp)
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)

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

face = round(inputDirection/90)
if face == 4 face =0

sprite_index = sprite[face]