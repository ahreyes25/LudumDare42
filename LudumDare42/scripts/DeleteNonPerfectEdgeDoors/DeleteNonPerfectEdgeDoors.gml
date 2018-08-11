// check left
if (collision_line(x, y, 0, y, oSolid, false, true) == noone) {
	sidesNotInRoom++;
}

// check right
if (collision_line(x, y, room_width, y, oSolid, false, true) == noone) {
	sidesNotInRoom++;
}

// check up
if (collision_line(x, y, x, 0, oSolid, false, true) == noone) {
	sidesNotInRoom++;
}

// check down
if (collision_line(x, y, x, room_height, oSolid, false, true) == noone) {
	sidesNotInRoom++;
}

// Delete door if not perfect edge
if (sidesNotInRoom != 1) {
	instance_create_layer(x, y, "World", oSolid);
	instance_destroy();
}