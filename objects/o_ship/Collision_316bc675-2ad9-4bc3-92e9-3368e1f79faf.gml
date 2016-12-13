/// collision
motion_add(point_direction(other.x, other.y, x, y), 1);

// stuck
if (x=other.x and y = other.y) {
	if (id > other.id) {
		x += 1;
	} else {
		x -= 1;
	}
}