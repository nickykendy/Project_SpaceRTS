/// draw selected
if (selected) {
	if (team == 0) {
		draw_set_alpha(0.25);
		draw_circle_color(x, y, 32, c_white, c_white, true);
		draw_set_alpha(0.1);
		draw_circle_color(x, y, 32, c_white, c_white, false);
		draw_set_alpha(1);
		draw_set_font(fnt_smallgui);
		draw_text_color(x-20, y-38, string(gold)+"/"+string(maxGold), c_white, c_white, c_white, c_white, 1);
	} else if (team == 1) {
		draw_set_alpha(0.25);
		draw_circle_color(x, y, 32, c_lime, c_lime, true);
		draw_set_alpha(0.1);
		draw_circle_color(x, y, 32, c_lime, c_lime, false);
		draw_set_alpha(1);
		draw_set_font(fnt_smallgui);
		draw_text_color(x-12, y-40, string(hp)+"/"+string(maxHp), c_lime, c_lime, c_lime, c_lime, 1);
	} else if (team == 2) {
		draw_set_alpha(0.25);
		draw_circle_color(x, y, 32, c_red, c_red, true);
		draw_set_alpha(0.1);
		draw_circle_color(x, y, 32, c_red, c_red, false);
		draw_set_alpha(1);
	}
}

draw_self();