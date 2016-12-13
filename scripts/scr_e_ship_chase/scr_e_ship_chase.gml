/// scr_e_ship_chase
friction = 0;
image_speed = 0.5;

if (instance_exists(foe)) {
	if (distance_to_point(foe.x, foe.y) <= 64) {
		state = "attack";
	} else {
		motion_add(point_direction(x, y, foe.x, foe.y), acc);
	}
}

if (speed >= spd) speed = spd;