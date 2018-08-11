randomize();

dungeonWidth		= 50;
dungeonHeight		= 50;
unitWidth			= 24;
unitHeight			= 24;

numberOfRooms		= 100;
rooms				= ds_list_create();

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

numberOfDumpsters	= 0;
viewDistance		= 200;