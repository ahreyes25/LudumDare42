randomize();

unitWidth			= 24;
unitHeight			= 24;
dungeonWidth		= room_width  / unitWidth;
dungeonHeight		= room_height / unitHeight;
numberOfRooms		= 10;
rooms				= ds_list_create();
numberOfDumpsters	= 0;
numberOfCabinets	= 0;
viewDistanceX		= 150;
viewDistanceY		= 150;
limitDistance		= 150;
limitDrawCalls		= false; // set to true for game, this limits the number of draw calls to only what is near the player
setKitchen			= 0;
setBathroom			= 0;

for (var i = 0; i < numberOfRooms; i++) {
	var roomWidth		= irandom_range(4, 8);
	var roomHeight		= irandom_range(4, 8);
	var roomX			= irandom_range(3, dungeonWidth  - roomWidth  - 4)  * unitWidth;
	var roomY			= irandom_range(3, dungeonHeight - roomHeight - 4) * unitHeight;
	var tRoom			= instance_create_layer(roomX, roomY, "World", oDungeonRoom);
	tRoom.roomWidth		= roomWidth;
	tRoom.roomHeight	= roomHeight;
	tRoom.unitWidth		= unitWidth;
	tRoom.unitHeight	= unitHeight;
	
	if (Chance(10) && setKitchen == 0) {
		setKitchen++;
		tRoom.isKitchen = true;
	}

	if (Chance(10) && setBathroom == 0 && !tRoom.isKitchen) {
		setBathroom++;
		tRoom.isBathroom = true;
	}

	ds_list_add(rooms, tRoom);
}

GuaranteeKitchenAndBathroom();

alarm[0] = 2;