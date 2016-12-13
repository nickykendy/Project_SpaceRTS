/// scr_p_worker_turnin()
friction = 0.5;
image_speed = 0.5;
if (image_index >= 4) image_index = 0;

global.gold += carry;
carry = 0;

if (target != -1 and instance_exists(target)) {
	with (target) instance_destroy();
}

var temp = instance_nearest(x, y, o_mine);
if (temp.gold > 0) {
	target = instance_create_layer(temp.x, temp.y, "ins_control", o_target);
	target.tgt = 1;
	state = "move";
} else {
	state = "idle";
}