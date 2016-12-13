/// scr_e_ship_attack

friction = 0.5;
image_index = 0;
image_speed = 0;

if (instance_exists(foe) and foe != -1) {
	if (point_distance(x, y, foe.x, foe.y) <= 128) {
		direction = point_direction(x, y, foe.x, foe.y)
		image_angle = point_direction(x, y, foe.x, foe.y);
		if (alarm[0] == -1 and weapon != -1) {
			var laser = instance_create_layer(x, y, "ins_ship", o_e_laser);
			laser.image_angle = image_angle;
			laser.direction = image_angle;
			alarm[0] = 10;
		}
	}
	
	if (distance_to_point(foe.x, foe.y) >= 96) {
		state = "chase";
	}
}