for (var i = 0; i < oPlayer.numberOfBowls; i++) {
	var tBowl = ds_list_find_value(oPlayer.bowls, i);
	tBowl.visible = true;
	tBowl.carried = false;
	tBowl.phy_position_x = oPlayer.x + random_range(-24, 24);
	tBowl.phy_position_y = oPlayer.y + random_range(-24, 24);
	tBowl.alarm[0] = 10;
}

for (var i = 0; i < oPlayer.numberOfBowls; i++) {
	ds_list_delete(oPlayer.bowls, i);
}

oDungeonController.numberOfBowls = oPlayer.numberOfBowls;
oPlayer.numberOfBowls = 0;