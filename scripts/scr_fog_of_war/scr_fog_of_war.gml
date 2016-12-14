/// scr_fog of war
if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
    
    // Draw the dark fog to the surface
    surface_set_target(surf);
    draw_clear(c_white);
    surface_reset_target();
}
// Use subtractive drawing mode to ignore white
gpu_set_blendmode(bm_subtract);

// Clear the fog
surface_set_target(surf);
if (instance_exists(o_p_ship)) {
	for (i=0; i<instance_number(o_p_ship); i++) {
		ship[i] = instance_find(o_p_ship, i);
		draw_sprite(s_vision, 0, ship[i].x, ship[i].y);
	}
	
	for (j=0; j<instance_number(o_p_base); j++) {
		base[j] = instance_find(o_p_base, j);
		draw_sprite(s_vision, 0, base[j].x, base[j].y);
	}
}
surface_reset_target();

// Now draw the surface we have created in the room
draw_surface(surf, 0, 0);
gpu_set_blendmode(bm_normal);