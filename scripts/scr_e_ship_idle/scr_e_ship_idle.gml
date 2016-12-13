/// scr_e_ship_idle()
friction = 0.5;
image_index = 0;
image_speed = 0;

if (instance_exists(foe) and foe != -1) {
	if (distance_to_point(foe.x, foe.y) <= 256) {
		state = "chase";
	}
}