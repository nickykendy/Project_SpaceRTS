/// scr_fog of war

// unit fog
if (!surface_exists(unitSurf)) {
	unitSurf = surface_create(room_width, room_height);
}

surface_set_target(unitSurf);
draw_clear_alpha(c_black, 0.5);

if (instance_exists(o_p_ship)) {
	with (o_p_ship) {
		gpu_set_blendmode(bm_src_color);
		draw_sprite(s_vision, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
}

if (instance_exists(o_p_unitView)) {
	with (o_p_unitView) {
		gpu_set_blendmode(bm_src_color);
		draw_sprite(s_vision, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
}

if (instance_exists(o_p_base)) {
	with (o_p_base) {
		gpu_set_blendmode(bm_src_color);
		draw_sprite(s_vision, 0, x, y);
		gpu_set_blendmode(bm_normal);
	}
}
surface_reset_target();

// Now draw the surface we have created in the room
draw_surface_ext(unitSurf, 0, 0, 1, 1, 0, c_white, 0.9);