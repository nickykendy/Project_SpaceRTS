/// deactive
if (!position_meeting(mouse_x, mouse_y, o_button)) {
	with (o_button) {
		instance_deactivate_object(self);
	}
}