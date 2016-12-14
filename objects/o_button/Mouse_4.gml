/// create the ship
if (global.gold >= cost) {
	instance_create_layer(x, y, "ins_ship", ship);
	global.gold -= cost;
}

image_index = 0;
image_xscale = 1;
image_yscale = 1;

with (o_button) {
	instance_deactivate_object(self);
}