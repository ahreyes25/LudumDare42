randomize();

unitWidth			= 24;
unitHeight			= 24;
dungeonWidth		= room_width  / unitWidth;
dungeonHeight		= room_height / unitHeight;
numberOfRooms		= 30;
rooms				= ds_list_create();
numberOfDumpsters	= 0;
viewDistance		= 200;
limitDrawCalls		= false; // set to true for game, this limits the number of draw calls to only what is near the player

for (var i = 0; i < numberOfRooms; i++) {
	var roomWidth		= irandom_range(4, 8);
	var roomHeight		= irandom_range(4, 8);
	var roomX			= irandom_range(1, dungeonWidth  - roomWidth  - 2)  * unitWidth;
	var roomY			= irandom_range(1, dungeonHeight - roomHeight - 2) * unitHeight;
	var tRoom			= instance_create_layer(roomX, roomY, "World", oDungeonRoom);
	tRoom.roomWidth		= roomWidth;
	tRoom.roomHeight	= roomHeight;
	tRoom.unitWidth		= unitWidth;
	tRoom.unitHeight	= unitHeight;

	ds_list_add(rooms, tRoom);
}

// At least one dumpster is made
while (instance_number(oDumpster) == 0) {
	var rIndex = irandom_range(0, numberOfRooms - 1);
	var tRoom  = ds_list_find_value(rooms, rIndex);
	GenerateDumpsters(tRoom);
}

alarm[0] = 2;