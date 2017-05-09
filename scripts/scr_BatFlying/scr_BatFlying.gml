/// Flying State

// Set sprite
sprite_index = spr_Bat_Flying;


// Control horizontal flip
if (facingLeft == false) {
	image_xscale = -1; // horizontally flip the sprite
} else {
	image_xscale = 1; // no horizontal flip of the sprite
}


// Move the bat
if (up) {
	y = y - moveSpeed;
}

if (down) {
	y = y + moveSpeed;
}

if (left) {
	x = x - moveSpeed;
}

if (right) {
	x = x + moveSpeed;
}

if (place_meeting(x, y-1, obj_Collision) && up) {
	state = bat.perch;
}