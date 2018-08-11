/// @description Build

GenerateWalls(id);

if (isKitchen) {
	GenerateKitchenStuff(id);
}

if (isBathroom) {
	GenerateToilet(id);	
}

if (isKitchen || isBathroom) {
	depth = oDungeonRoom.depth - 1;	
}