spd = 5

next_time_I_think -=1
/*switch state {
	case EnemyState.Idle:
	if point_distance(x,y,oPlayer.x,oPlayer.y)<close {
		state = EnemyState.Chasing
	}
	if next_time_I_think < 0 {
		next_time_I_think = 30
		image_angle = random(360)
	}
	x+= lengthdir_x(spd,image_angle)
	y+= lengthdir_y(spd,image_angle)
	break;
	
	case EnemyState.Chasing:
	if point_direction(x,y,oPlayer.x,oPlayer.y) >far {
		state = EnemyState.Idle
	}else{
		if point_distance(x,y,oPlayer.x,oPlayer.y)>close{
			state=EnemyState.Shooting
		}
	}
	
	var vector_to_player = point_direction(x,y,oPlayer.x,oPlayer.y)
	image_angle = vector_to_player
	x+= lengthdir_x(spd,image_angle)
	y+= lengthdir_y(spd,image_angle)
	break
	
	case EnemyState.Shooting:
	if point_distance(x,y,oPlayer.x,oPlayer.y) > far {
		state= EnemyState.Idle
	}
	var vector_to_player = point_direction(x,y,oPlayer.x,oPlayer.y)
	var _bull = instance_create_depth(x,y,depth,oBullet)
	_bull.direction = vector_to_player
	_bull.speed = 20
	break;
}
*/

if place_meeting(x,y,oBullet) && !invicible {
	takeDamage()
	invicible = true
}
if(invicible) { 
	invicible_timer++;
	if(invicible_timer > invicible_duration) {
		invicible = false;
		invicible_timer = 0;
	}
}







