GenerateRooms();

if (Chance(2)) {
	var desX = random_range(x, x + (roomWidth  * unitWidth));
	var desY = random_range(y, y + (roomHeight * unitHeight));
	
	if (!instance_place(desX, desY, oSolid)) {
		instance_create_layer(desX, desY, "Game", oDumpster);
	}
}