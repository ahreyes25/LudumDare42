/// @description Build

GenerateWalls(id);

if (isKitchen) {
	GenerateObjectInRoom(id, oPantry);	
	GenerateObjectInRoom(id, oFridge);	
	oDungeonController.numberOfPantries++;
}

if (isBathroom) {
	repeat(choose(2, 3)) {
		GenerateObjectInRoom(id, oToilet);	
	}
}

if (isKitchen || isBathroom) {
	depth = oDungeonRoom.depth - 1;	
}
else {
	if (Chance(15)) {
		GenerateObjectInRoom(id, oCouch);	
	}
	
	if (Chance(25)) {
		GenerateObjectInRoom(id, oChair);	
	}
	
	if (Chance(10)) {
		GenerateObjectInRoom(id, oLamp);	
	}
	
	if (oDungeonController.numberOfCabinets == 0){
		GenerateObjectInRoom(id, oCabinet);
		oDungeonController.numberOfCabinets++;
	}
}