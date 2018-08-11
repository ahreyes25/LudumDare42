if (playerInRoom) {	
	for (var i = 0; i < roomWidth; i++) {
		for (var j = 0; j < roomHeight; j++) {
			if (!instance_position(x + (i * unitWidth), y + (j * unitHeight), oSolid)) {
				draw_sprite(sTestTile, 0, x + (i * unitWidth), y + (j * unitHeight));	
			}
			else {
				// autotiling	
			}
		}
	}
}