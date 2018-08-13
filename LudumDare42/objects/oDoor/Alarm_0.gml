/// @description Check For Edge Doors
DeleteNonPerfectEdgeDoors();
DeleteCornerDoors();

// destroy door if place meeting stuff
if (place_meeting(x, y, oFridge) || place_meeting(x, y, oDumpster) ||
	place_meeting(x, y, oPantry) || place_meeting(x, y, oToilet)   ||
	place_meeting(x, y, oCabinet)) {
		instance_destroy();		
		instance_create_layer(x, y, "World", oSolid);
}

#region // Find Side Out
	// wall left
	var l = collision_point(x - 12, y, oSolid, false, true);
	if (l != noone) {
	
		// wall right
		var r = collision_point(x + 36, y, oSolid, false, true);
		if (r != noone) {
		
			// check up
			if (!InsideRoom(x, y - 48, false, false)) {
				sideOut = "up";	
			}
		
			// check down
			if (!InsideRoom(x, y + 96, false, false)) {
				sideOut = "down";
			}
		}	
	
	}
	
	// wall up
	var u = collision_point(x, y - 12, oSolid, false, true);
	if (u != noone) {
	
		// wall down
		var d = collision_point(x, y + 36, oSolid, false, true);
		if (d != noone) {
		
			// check left
			if (!InsideRoom(x - 48, y, false, false)) {
				sideOut = "left";	
			}
		
			// check right
			if (!InsideRoom(x + 96, y, false, false)) {
				sideOut = "right";
			}
		}	
	
	}
#endregion