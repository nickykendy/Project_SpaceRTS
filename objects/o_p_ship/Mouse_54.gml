/// create the target
if (selected == true) {
	if (target != -1 and instance_exists(target)) {
		with (target) instance_destroy();
	}
	
	var dest = instance_position(mouse_x, mouse_y, o_building);
	if (dest != noone) {
		target = instance_create_layer(dest.x, dest.y, "ins_control", o_target);
		target.tgt = 1;
	} else {
		target = instance_create_layer(mouse_x, mouse_y, "ins_control", o_target);
	}
	state = "move";
}