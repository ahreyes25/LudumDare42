dungeonWidth		= 50;
dungeonHeight		= 50;
unitWidth			= 24;
unitHeight			= 24;

numberOfRooms		= 8;
rooms				= ds_list_create();

for (var i = 0; i < numberOfRooms; i++) {
	
	var roomWidth		= irandom_range(6, 12);
	var roomHeight		= irandom_range(6, 12);
	var roomX			= irandom_range(0, dungeonWidth  - roomWidth)  * unitWidth;
	var roomY			= irandom_range(0, dungeonHeight - roomHeight) * unitHeight;
	var tRoom			= instance_create_layer(roomX, roomY, "World", oDungeonRoom);
	tRoom.roomWidth		= roomWidth;
	tRoom.roomHeight	= roomHeight;
	tRoom.unitWidth		= unitWidth;
	tRoom.unitHeight	= unitHeight;

	ds_list_add(rooms, tRoom);
}