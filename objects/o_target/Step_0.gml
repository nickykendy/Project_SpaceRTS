/// control
if (tgt == 0) {
	if (image_index >= 5) image_index = 0;
} else if (tgt == 1) {
	image_xscale = 2;
	image_yscale = 2;
	image_speed = 0.2;
	if (image_index >= 0 and image_index <= 5) image_index = 6;
}