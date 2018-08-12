if (setBathroom == 0) {
	var tRoom = ds_list_find_value(rooms, irandom_range(0, numberOfRooms - 1));
	
	while (tRoom.isBathroom || tRoom.isKitchen) {
		tRoom = ds_list_find_value(rooms, irandom_range(0, numberOfRooms - 1));
	}
	tRoom.isBathroom = true;
}

if (setKitchen == 0) {
	var tRoom = ds_list_find_value(rooms, irandom_range(0, numberOfRooms - 1));
	
	while (tRoom.isBathroom || tRoom.isKitchen) {
		tRoom = ds_list_find_value(rooms, irandom_range(0, numberOfRooms - 1));
	}
	tRoom.isKitchen = true;
}