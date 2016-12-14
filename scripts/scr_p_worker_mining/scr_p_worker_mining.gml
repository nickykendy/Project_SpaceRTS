/// scr_p_worker_mining()
friction = 0.5;

sprite_index = s_p_worker_mining;
image_speed = 0.3;

var canMine = true;

if (carry >= 10 or dest.gold <= 0) {
	canMine = false;
}

if (canMine) {
	if (alarm[0] == -1) {
		carry += 1;
		dest.gold -= 1;
		alarm[0] = room_speed;
	}
} else {
	if (target != -1 and instance_exists(target)) {
		with (target) instance_destroy();
	}
	
	var temp = instance_nearest(x, y, o_p_base);
	target = instance_create_layer(temp.x, temp.y, "ins_control", o_target);
	target.tgt = 1;
	state = "move";
}

	
	
	

	