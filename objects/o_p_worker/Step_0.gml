/// state
image_angle = direction;

if (state == "move") {
	scr_p_worker_move();
} else if (state == "idle") {
	scr_p_ship_idle();
} else if (state == "turnin") {
	scr_p_worker_turnin();
} else if (state == "mining") {
	scr_p_worker_mining();
}