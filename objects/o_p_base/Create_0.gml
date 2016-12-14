/// init
event_inherited();
scr_building_init(100, 0, 0, 0.5, 1, -1);

button_dis = 64;
button_obj[0] = o_button_worker;
button_obj[1] = o_button_scout;
button_count = array_length_1d(button_obj);
button_section = 360/button_count;
button_xpos[0] = 0;
button_ypos[0] = 0;

for (var i=0; i<button_count; i++) {
	button_xpos[i] = x+lengthdir_x(button_dis, button_section * i);
	button_ypos[i] = y+lengthdir_y(button_dis, button_section * i);
	button[i] = instance_create_layer(button_xpos[i], button_ypos[i], "ins_base", button_obj[i]);
	instance_deactivate_object(button[i]);
}