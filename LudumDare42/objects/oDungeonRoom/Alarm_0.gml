/// @description Room Generation

var unitWidth	= oGameController.dungeonController.unitWidth;
var unitHeight	= oGameController.dungeonController.unitHeight;
var nRooms		= ds_list_size(oGameController.dungeonController.rooms);


// room top
for (var i = 0; i < roomWidth; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oGameController.dungeonController.rooms, j);
		
		if (tRoom.id == id) {
			failures++;
			continue;
		}
		
		var xDesired = x + (i * unitWidth);
		var yDesired = y;
		
		if (xDesired > tRoom.x && xDesired < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
			yDesired > tRoom.y && yDesired < tRoom.y + (tRoom.roomHeight * unitHeight)) {
				failures++;
		}
	}
	
	if (failures == 1) {
		var wallUnit = instance_create_layer(xDesired, yDesired, "World", oSolid);	
		ds_list_add(topWall, wallUnit);
		
	}
}


// room bottom
for (var i = 0; i <= roomWidth; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oGameController.dungeonController.rooms, j);
		
		if (tRoom.id == id) {
			failures++;
			continue;
		}
		
		var xDesired = x + (i * unitWidth);
		var yDesired = y + (roomHeight * unitHeight);
		
		if (xDesired > tRoom.x && xDesired < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
			yDesired > tRoom.y && yDesired < tRoom.y + (tRoom.roomHeight * unitHeight)) {
				failures++;
		}
	}
	
	if (failures == 1) {
		var wallUnit = instance_create_layer(xDesired, yDesired, "World", oSolid);	
		ds_list_add(bottomWall, wallUnit);
	}
}


// room right
for (var i = 0; i <= roomHeight; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oGameController.dungeonController.rooms, j);
		
		if (tRoom.id == id) {
			failures++;
			continue;
		}
		
		var xDesired = x + (roomWidth * unitWidth);
		var yDesired = y + (i * unitHeight);
		
		if (xDesired > tRoom.x && xDesired < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
			yDesired > tRoom.y && yDesired < tRoom.y + (tRoom.roomHeight * unitHeight)) {
				failures++;
		}
	}
	
	if (failures == 1) {
		var wallUnit = instance_create_layer(xDesired, yDesired, "World", oSolid);	
		ds_list_add(rightWall, wallUnit);
	}
}


// room left
for (var i = 0; i < roomHeight; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oGameController.dungeonController.rooms, j);
		
		if (tRoom.id == id) {
			failures++;
			continue;
		}
		
		var xDesired = x;
		var yDesired = y + (i * unitHeight);
		
		if (xDesired > tRoom.x && xDesired < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
			yDesired > tRoom.y && yDesired < tRoom.y + (tRoom.roomHeight * unitHeight)) {
				failures++;
		}
	}
	
	if (failures == 1) {
		var wallUnit = instance_create_layer(xDesired, yDesired, "World", oSolid);
		ds_list_add(leftWall, wallUnit);
	}
}