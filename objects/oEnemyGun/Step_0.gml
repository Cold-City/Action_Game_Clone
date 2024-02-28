x = owner.x
y = owner.y
var _angle = 0
_angle = point_direction(x,y,oPlayer.x,oPlayer.y)
image_angle = _angle

if(allow_shoot == true){
	var _enemy_bullet = instance_create_layer(x, y, "Instances", oEnemyBullet);
	with(_enemy_bullet){
		speed = 2;
		direction = point_direction(x,y,oPlayer.x,oPlayer.y); 
		image_angle = direction
		}
	allow_shoot = false;
	alarm[0]= 60;
	
}



