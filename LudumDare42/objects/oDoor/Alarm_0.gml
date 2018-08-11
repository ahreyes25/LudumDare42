/// @description Check For Edge Doors
DeleteNonPerfectEdgeDoors();
DeleteCornerDoors();

// destroy door if place meeting stuff
if (place_meeting(x, y, oFridge) || place_meeting(x, y, oDumpster) ||
	place_meeting(x, y, oPantry) || place_meeting(x, y, oToilet)) {
		instance_destroy();		
		instance_create_layer(x, y, "World", oSolid);
}