enum EnemyState{
	Idle,
	Moving
}

state = EnemyState.Idle	

close = 150
far = 300
next_time_I_think = 5

hit_point = 2
gun = instance_create_layer(x,y,"Instances",oEnemyGun)
gun.owner = id
function takeDamage() {
	if hit_point>1 {
		hit_point-=1
		show_debug_message(hit_point)
		var bullet = instance_place(x, y, oBullet);
		if (bullet != noone) {
		    // Collision detected, now apply knockback
		    var knockback_distance = 10; // Adjust as needed
		    var direction_to_knockback = point_direction(bullet.x, bullet.y, x, y);

		    // Move the enemy away from the bullet's position
		    x += lengthdir_x(knockback_distance, direction_to_knockback);
		    y += lengthdir_y(knockback_distance, direction_to_knockback);

		    // Optionally, access the bullet's id or any specific variable
		    var hit_by_bullet_id = bullet.bullet_id; // Assuming you have a bullet_id variable in your bullet

		    // You can now use hit_by_bullet_id to know which bullet hit the enemy
		}
	}
	else {
		instance_destroy()
		instance_destroy(gun)
		instance_create_layer(x,y,"Instances",oEnemyCorpse)
	}
}
alarm[0] = room_speed * 3;
invicible = false;
invicible_timer = 0;
invicible_duration = 20;