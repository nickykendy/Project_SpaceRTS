/// state
if (instance_exists(o_p_ship)) {
	foe = instance_nearest(x, y, o_p_ship);
} else {
	foe = -1;
}

if (state == "chase") {
	scr_e_ship_chase();
} else if (state == "attack") {
	scr_e_ship_attack();
} else if (state == "idle") {
	scr_e_ship_idle();
}

if (place_meeting(x, y, o_p_unitView) or distance_to_object(o_p_ship)<=240) {
	visible = true;
} else {
	visible = false;
}
image_angle = direction;