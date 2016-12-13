/// state
image_angle += 0.1;

// state
if (state == "idle") {
	scr_p_base_idle();
} else if (state == "selected") {
	scr_p_base_selected();
} else if (state == "building") {
	scr_p_base_building();
}