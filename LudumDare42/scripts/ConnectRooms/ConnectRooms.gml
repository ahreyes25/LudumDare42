// check if above and bellow are in rooms
if (InsideRoom(x, y - 1, noone, false) && InsideRoom(x, y + 25, noone, false)) {
	if (Chance(50)) {
		instance_destroy();
	}
}

// check if left and right are in rooms
if (InsideRoom(x - 1, y, noone, false) && InsideRoom(x + 25, y, noone, false)) {
	if (Chance(50)) {
		instance_destroy();
	}
}