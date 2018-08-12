var rx = random_range(24, room_width  - 72);
var ry = random_range(24, room_height - 72);

var wall = choose(0, 1, 2, 3);

if (wall == 0) { // left
	while (InsideRoom(48, ry, noone, true) || instance_place(24, ry, oSolid)) {
		ry = random_range(48, room_height - 72);
	}
	instance_create_layer(48, ry, "World", oDumpster);		
}

else if (wall == 1) { // right
	while (InsideRoom(room_width - 72, ry, noone, true) || instance_place(room_width - 48, ry, oSolid)) {
		ry = random_range(48, room_height - 48);
	}
	instance_create_layer(room_width - 48, ry, "World", oDumpster);		
}


else if (wall == 2) { // top
	while (InsideRoom(rx, 48, noone, true) || instance_place(rx, 24, oSolid)) {
		rx = random_range(48, room_width - 72);
	}
	instance_create_layer(rx, 48, "World", oDumpster);		
}

else if (wall == 3) { // bottom
	while (InsideRoom(rx, room_height - 48, noone, true) || instance_place(rx, room_height - 48, oSolid)) {
		rx = random_range(48, room_width - 48);
	}
	instance_create_layer(rx, room_height - 48, "World", oDumpster);		
}
