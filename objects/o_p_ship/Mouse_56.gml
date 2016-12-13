/// select the ship
event_inherited();
if (instance_exists(o_mouse)) {
	scr_toggle_select(o_mouse.px, o_mouse.py, mouse_x, mouse_y);
	scr_click_select(o_mouse.px, o_mouse.py, mouse_x, mouse_y);
}