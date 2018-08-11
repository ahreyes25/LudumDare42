if (instance_exists(oPlayer)) {
	if (oPlayer.x > x - oDungeonController.viewDistanceX &&
		oPlayer.x < x + (roomWidth  * unitWidth) + oDungeonController.viewDistanceX &&
		oPlayer.y > y - oDungeonController.viewDistanceY &&
		oPlayer.y < y + (roomHeight * unitHeight) + oDungeonController.viewDistanceY) {
			playerInRoom = true;	
	}
	else 
		playerInRoom = false;
}