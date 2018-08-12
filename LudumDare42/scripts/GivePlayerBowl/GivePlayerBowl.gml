if (oPlayer.numberOfBowls < oPlayer.bowlCarryLimit) {
	var bowl = instance_create_layer(oPlayer.x, oPlayer.y, "World", oBowl);
	ds_list_add(oPlayer.bowls, bowl);
	oPlayer.numberOfBowls++;
}