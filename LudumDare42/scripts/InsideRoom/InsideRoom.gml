var xx		= argument0;
var yy		= argument1;
var _room	= argument2;
var inside	= argument3;

var unitWidth	= oDungeonController.unitWidth;
var unitHeight	= oDungeonController.unitHeight;
var nRooms		= oDungeonController.numberOfRooms;

var roomInsideOf = 0;
for (var j = 0; j < nRooms; j++) {
	var tRoom = ds_list_find_value(oDungeonController.rooms, j);
		
	if (_room != noone) {
		if (tRoom.id == _room) {
			continue;
		}
	}
		
	if (!inside) {
		if (xx > tRoom.x && xx < tRoom.x + (tRoom.roomWidth  * unitWidth) &&
			yy > tRoom.y && yy < tRoom.y + (tRoom.roomHeight * unitHeight)) {
				roomInsideOf++;
		}
	}
	else {
		if (xx > tRoom.x + unitWidth  + 1 && xx < tRoom.x + (tRoom.roomWidth  * unitWidth)  - unitWidth  - 1 &&
			yy > tRoom.y + unitHeight + 1 && yy < tRoom.y + (tRoom.roomHeight * unitHeight) - unitHeight - 1) {
				roomInsideOf++;
		}
	}
}
	
// Not intersecting, create pieces
if (roomInsideOf == 0) {
	return false;
}
else if (roomInsideOf >= 1) {
	return true;
}