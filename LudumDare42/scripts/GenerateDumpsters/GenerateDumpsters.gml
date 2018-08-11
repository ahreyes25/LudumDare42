var r = argument0;

if (Chance(2)) {
	var desX = random_range(r.x + 24, r.x + (r.roomWidth  * unitWidth)  - 24);
	var desY = random_range(r.y + 24, r.y + (r.roomHeight * unitHeight) - 24);
	
	if (!instance_place(x, y, oSolid)) {
		instance_create_layer(desX, desY, "Game", oDumpster);
	}
}