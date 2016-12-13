/// scr_p_ship_move()
friction = 0;
image_speed = 0.5;

if (instance_exists(target)) {
	motion_add(point_direction(x, y, target.x, target.y), acc);
	
	//delete the target when reach
	if (position_meeting(x, y, target)) {
		with (target) instance_destroy();
		state = "idle";
	}
}

if (speed > spd) speed = spd;