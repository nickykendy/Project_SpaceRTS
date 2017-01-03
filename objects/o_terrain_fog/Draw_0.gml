/// scr_fog of war

// terrain fog
surface_set_target(terrainSurf);

if (instance_exists(o_p_ship)) {
	with (o_p_ship) {
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
draw_surface(terrainSurf, 0, 0);