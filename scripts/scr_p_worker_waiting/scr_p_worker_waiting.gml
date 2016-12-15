/// scr_p_worker_waiting()
friction = 0;
sprite_index = s_p_worker;
image_speed = 0.5;

if (instance_exists(target) and target != -1) {
	motion_add(point_direction(x, y, target.x, target.y), acc);
	//delete the target when reach
	
	dest = instance_position(target.x, target.y, o_mine);
	var full = true;
	if (dest != noone and dest.gold > 0) {
		for (var i=0; i<4; i++) {
			if (dest.slot[i]) {
				full = false;
				break;
			}
		}
		
		if (full == true) {
			state = "waiting";
		} else {
			state = "mining";
		}
		return 0;
	}
}

if (speed > spd) speed = spd;