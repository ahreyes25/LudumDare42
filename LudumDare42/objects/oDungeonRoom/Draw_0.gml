if (playerInRoom) {	
	for (var i = 0; i < roomWidth; i++) {
		for (var j = 0; j < roomHeight; j++) {
			// draw floor 
			if (!isKitchen && !isBathroom) {
				//draw_sprite_ext(sTestTile, 0, x + unitWidth, y + unitWidth, roomWidth, roomHeight, 0, c_white, 1);
				for (var i = 0; i < roomWidth; i++) {
					for (var j = 0; j < roomHeight; j++) {
						if (!instance_place(x + (i * unitWidth), y + (j * unitHeight), oSolid)) {
							draw_sprite(sWoodTile, 0, x + (i * unitWidth), y + (j * unitHeight));	
						}
					}
				}
			}
			// Kitchen and bathroom tiles
			else {
				for (var i = 0; i < roomWidth; i++) {
					for (var j = 0; j < roomHeight; j++) {
						if (!instance_place(x + (i * unitWidth), y + (j * unitHeight), oSolid)) {
							draw_sprite(sKitchenTile, 0, x + (i * unitWidth), y + (j * unitHeight));
						}
					}
				}
			}
		}
	}
}