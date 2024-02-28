enum EnemyState{
	Idle,
	Chasing,
	Shooting
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
	}
	else {
		instance_destroy()
		instance_destroy(gun)
	}
}

invicible = false;
invicible_timer = 0;
invicible_duration = 20;