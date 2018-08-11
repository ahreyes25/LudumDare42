if (playerInRoom) {	
	for (var i = 0; i < roomWidth; i++) {
		for (var j = 0; j < roomHeight; j++) {
			// draw floor 
			draw_sprite_ext(sTestTile, 0, x + unitWidth, y + unitWidth, roomWidth, roomHeight, 0, c_white, 1);
		}
	}
}