/// scr_p_worker_move()
friction = 0;
sprite_index = s_p_worker;
image_speed = 0.5;

if (instance_exists(target)) {
	motion_add(point_direction(x, y, target.x, target.y), acc);
	
	//delete the target when reach
	if (position_meeting(x, y, target)) {
		if (target.tgt == 1) {
			dest = instance_position(target.x, target.y, o_mine);
			if (dest != noone and dest.gold > 0) {
				state = "mining";
				return 0;
			}
			
			dest = instance_position(target.x, target.y, o_p_base);
			if (dest != noone and carry > 0) {
				state = "turnin";
				return 0;
			}
		}
		with (target) instance_destroy();
		state = "idle";
	}
}

if (speed > spd) speed = spd;