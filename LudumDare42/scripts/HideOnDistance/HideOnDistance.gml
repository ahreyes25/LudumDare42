if (oDungeonController.limitDrawCalls) {
	if (instance_exists(oPlayer)) {
		if (point_distance(x, y, oPlayer.x, oPlayer.y) > oDungeonController.limitDistance) {
			visible = false;	
		}
		else {
			visible = true;	
		}
	}
}
else {
	visible = true;	
}