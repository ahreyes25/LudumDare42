/// @depreciated

/*
var r = argument0;

if (Chance(2)) {
	var desX = random_range(r.x + 24, r.x + (r.roomWidth  * unitWidth)  - 24);
	var desY = random_range(r.y + 24, r.y + (r.roomHeight * unitHeight) - 24);
	
	var rooms		= GetRoomsInsideOf(desX, desY);
	var inKitchen	= false;
	
	for (var i = 0; i < ds_list_size(rooms); i++) {
		var tRoom = ds_list_find_value(rooms, i);
		if (tRoom.isKitchen || tRoom.isBathroom) {
			inKitchen = true;
			break;
		}
	}
	
	if (!inKitchen) {
		if (!instance_place(desX, desY, oSolid)) {
			instance_create_layer(desX, desY, "Game", oDumpster);
		}
	}
}
*/