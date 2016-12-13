/// scr_click_select(px,py,rx,ry)

// press
var px = argument0;
var py = argument1;
// release
var rx = argument2;
var ry = argument3;

var dis = sqrt(sqr(rx - px) + sqr(ry - py));
if (dis <= 10) {
	if (position_meeting(rx, ry, id)) {
		selected = true;
	} else {
		selected = false;
	}
}