var rx = random_range(24, room_width  - 72);
var ry = random_range(24, room_height - 72);

var wall = choose(0, 1, 2, 3);

if (wall == 0) { // left
	while (InsideRoom(24, ry, noone, true) || instance_place(24, ry, oSolid)) {
		ry = random_range(24, room_height - 72);
	}
	instance_create_layer(24, ry, "World", oDumpster);		
}

else if (wall == 1) { // right
	while (InsideRoom(room_width - 72, ry, noone, true) || instance_place(room_width - 72, ry, oSolid)) {
		ry = random_range(24, room_height - 72);
	}
	instance_create_layer(room_width - 72, ry, "World", oDumpster);		
}


else if (wall == 2) { // top
	while (InsideRoom(rx, 24, noone, true) || instance_place(rx, 24, oSolid)) {
		rx = random_range(24, room_width - 72);
	}
	instance_create_layer(rx, 24, "World", oDumpster);		
}

else if (wall == 3) { // bottom
	while (InsideRoom(rx, room_height - 72, noone, true) || instance_place(rx, room_height - 72, oSolid)) {
		rx = random_range(24, room_width - 72);
	}
	instance_create_layer(rx, room_height - 72, "World", oDumpster);		
}
