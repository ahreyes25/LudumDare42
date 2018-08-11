var xx		= argument0;
var yy		= argument1;

var unitWidth	= oDungeonController.unitWidth;
var unitHeight	= oDungeonController.unitHeight;
var nRooms		= oDungeonController.numberOfRooms;
var rooms		= ds_list_create();

for (var j = 0; j < nRooms; j++) {
	var tRoom = ds_list_find_value(oDungeonController.rooms, j);

	if (xx > tRoom.x && xx < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
		yy > tRoom.y && yy < tRoom.y + (tRoom.roomHeight * unitHeight)) {
			ds_list_add(rooms, tRoom);
	}
}
	
return rooms;
ds_list_destroy(rooms);