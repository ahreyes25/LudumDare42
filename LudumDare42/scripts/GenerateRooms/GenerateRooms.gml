/// @description Room Generation

var unitWidth	= oDungeonController.unitWidth;
var unitHeight	= oDungeonController.unitHeight;
var nRooms		= oDungeonController.numberOfRooms;


// room top
for (var i = 0; i < roomWidth; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oDungeonController.rooms, j);
		
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
		instance_create_layer(xDesired, yDesired, "World", oSolid);	
	}
}


// room bottom
for (var i = 0; i <= roomWidth; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oDungeonController.rooms, j);
		
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
		instance_create_layer(xDesired, yDesired, "World", oSolid);	
	}
}


// room right
for (var i = 0; i <= roomHeight; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oDungeonController.rooms, j);
		
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
		instance_create_layer(xDesired, yDesired, "World", oSolid);
	}
}


// room left
for (var i = 0; i < roomHeight; i++) {
	var failures = 0;
	for (var j = 0; j < nRooms; j++) {
		var tRoom = ds_list_find_value(oDungeonController.rooms, j);
		
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
		instance_create_layer(xDesired, yDesired, "World", oSolid);
	}
}