var wall = choose(0, 1, 2, 3);
	
// Left wall
if (wall == 0) {
	var tries	= 100;
	var ry		= random_range(48, room_height - 48);
		
	while (collision_line(0, ry, room_width, ry, oDoor, false, true) != oDoor) {
		if (tries <= 0) {
			break;
		}
			
		ry = random_range(48, room_height - 48);
		tries--;
	}
	instance_create_layer(24, ry, "Game", oDog);
}
	
// Top Wall
else if (wall == 1) {
	var tries	= 100;
	var rx		= random_range(48, room_width - 48);
		
	while (collision_line(rx, 0, rx, room_height, oDoor, false, true) != oDoor) {
		if (tries <= 0) {
			break;
		}
			
		rx = random_range(48, room_width - 48);
		tries--;
	}
	instance_create_layer(rx, 24, "Game", oDog);
}
	
// Right Wall
else if (wall == 2) {
	var tries	= 100;
	var ry		= random_range(48, room_height - 48);
		
	while (collision_line(room_width, ry, 0, ry, oDoor, false, true) != oDoor) {
		if (tries <= 0) {
			break;
		}
			
		ry = random_range(48, room_height - 48);
		tries--;
	}
	instance_create_layer(room_width - 24, ry, "Game", oDog);
}
	
// Bottom Wall 
else if (wall == 3) {
	var tries	= 100;
	var rx		= random_range(48, room_width - 48);
		
	while (collision_line(rx, room_height, rx, 0, oDoor, false, true) != oDoor) {
		if (tries <= 0) {
			break;
		}
			
		rx = random_range(48, room_width - 48);
		tries--;
	}
	instance_create_layer(rx, room_height - 24, "Game", oDog);
}