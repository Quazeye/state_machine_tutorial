/// Switch states

down = keyboard_check(vk_down);
up = keyboard_check(vk_up);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

switch (state) {

	case bat.perch:
		scr_BatPerch();
		break;

	case bat.flying:
		scr_BatFlying();
		break;
		
	case bat.attack:
		scr_BatAttack();
		break;
}

