/// scr_toggle_select(px,py,rx,ry)
// press
var px = argument0;
var py = argument1;
// release
var rx = argument2;
var ry = argument3;

// cases
var tlbr = (x>px and x<rx and y>py and y<ry);
var bltr = (x>px and x<rx and y<py and y>ry);
var brtl = (x<px and x>rx and y<py and y>ry);
var trbl = (x<px and x>rx and y>py and y<ry);

if (tlbr or brtl or bltr or trbl) {
	selected = true;
} else {
	selected = false;
}