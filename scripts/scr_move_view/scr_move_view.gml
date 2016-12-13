/// scr_move_view()

var right = keyboard_check(vk_right) or (mouse_x >= x + 300);
var left = keyboard_check(vk_left) or (mouse_x <= x - 300);
var up = keyboard_check(vk_up) or (mouse_y <= y - 180);
var down = keyboard_check(vk_down) or (mouse_y >= y + 180);

hspd = (right - left)*viewspd;
vspd = (down - up)*viewspd;

x += hspd;
y += vspd;