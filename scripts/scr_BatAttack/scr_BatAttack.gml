/// Attack state

// recoil
if (facingLeft == false) {
	x = x - moveSpeed;
} else {
	x = x + moveSpeed; 
}

// create the projectile
if (!instance_exists(obj_Projectile)) {
	with (instance_create_layer(x,y,"Instances",obj_Projectile)) {
		if (obj_Bat.facingLeft == false) {
			spd = 12;
		}
		
		if (obj_Bat.facingLeft) {
			spd = -12;
		} 
	}
}

// go back to flying state after 15 steps
if (alarm[0] = -1) {
	alarm[0] = 15;
}