/// scr_p_worker_mining()
friction = 0.5;
image_speed = 0.3;
if (image_index == 0) image_index = 5;
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

	
	
	

	