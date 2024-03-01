

var _camW = camera_get_view_width(view_camera[0])
var _camH = camera_get_view_height(view_camera[0])

if instance_exists(oPlayer) {
	x = oPlayer.x - _camW/2
	y = oPlayer.centerY - _camH/2
}

x = clamp(x,0,room_width-_camW)
y = clamp(y,0, room_height - _camH)

x+= random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude))

camera_set_view_pos(view_camera[0], x, y)





