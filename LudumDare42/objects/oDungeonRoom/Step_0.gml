if (oPlayer.x > x - oDungeonController.viewDistance &&
	oPlayer.x < x + (roomWidth  * unitWidth) + oDungeonController.viewDistance &&
	oPlayer.y > y - oDungeonController.viewDistance &&
	oPlayer.y < y + (roomHeight * unitHeight) + oDungeonController.viewDistance) {
		playerInRoom = true;	
}
else 
	playerInRoom = false;