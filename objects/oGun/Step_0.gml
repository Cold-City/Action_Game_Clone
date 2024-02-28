x = oPlayer.x
y = oPlayer.y
var _angle = 0
_angle = point_direction(x,y,mouse_x,mouse_y)
image_angle = _angle

if mouse_check_button(mb_left) && allow_shoot {
	show_debug_message("shoot")
	var bullet = instance_create_depth(x+18,y,depth,oBullet)
	with bullet {
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 6
		image_angle = direction
	}
	allow_shoot = false
}

if(!allow_shoot) { 
	shoot_timer++;
	if(shoot_timer > shoot_duration) {
		allow_shoot = true;
		shoot_timer = 0;
	}
}



