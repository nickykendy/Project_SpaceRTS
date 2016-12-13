/// state
// find the enemy
if (instance_exists(o_e_ship)) {
	foe = instance_nearest(x, y, o_e_ship);
} else {
	foe = -1;
}

// state
if (state == "move") {
	scr_p_ship_move();
} else if (state == "idle") {
	scr_p_ship_idle();
}

// fire weapon
if (foe != -1 and point_distance(x, y, foe.x, foe.y) <= 128) {
	image_angle = point_direction(x, y, foe.x, foe.y);
	if (alarm[0] == -1 and weapon != -1) {
		var laser = instance_create_layer(x, y, "ins_ship", o_p_laser);
		laser.image_angle = image_angle;
		laser.direction = image_angle;
		alarm[0] = 10;
	}
} else {
	image_angle = direction;
}