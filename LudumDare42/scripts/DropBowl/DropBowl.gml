// PUT BOWL BACK IN CABINET
	
if (oPlayer.numberOfBowls > 0) {
	// Check for cabinet
	/*
	var cabinet = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oCabinet, false, true);
	if (cabinet != noone) {
		var tBowl = ds_list_find_value(oPlayer.bowls, oPlayer.numberOfBowls - 1);
		ds_list_delete(oPlayer.bowls, oPlayer.numberOfBowls - 1);
		audio_play_sound(sfBowl, 0, 0);
		
		with (tBowl) {
			instance_destroy();	
		}
		
		oPlayer.numberOfBowls--;
	}
	
	// DROP BOWL ON GROUND
	*/
	//else { // no cabinet
		// drop bowl
		if (oPlayer.numberOfBowls > 0) {
			//var groundBowl = collision_circle(oPlayer.x, oPlayer.y, 36, oBowl, false, true);
			//if (groundBowl != noone) {
			//	if (groundBowl.carried) {
					var tBowl = ds_list_find_value(oPlayer.bowls, oPlayer.numberOfBowls - 1);
					if (tBowl != noone) {
						tBowl.visible = true;
						tBowl.carried = false;
						tBowl.phy_position_x = oPlayer.x;
						tBowl.phy_position_y = oPlayer.y;
						tBowl.alarm[0] = 10;
						ds_list_delete(oPlayer.bowls, oPlayer.numberOfBowls - 1);
						oPlayer.numberOfBowls--;
						oDungeonController.numberOfBowls++;
						audio_play_sound(sfBowl, 0, 0);
					}
			//	}
			//}
		}
	//}
}


/* MOUSE CONTROLS

Input();
if (canBowl && lmbPressed &&
	!MouseTouching(oPantry)   && !MouseTouching(oFridge) &&
	!MouseTouching(oDumpster) && !MouseTouching(oToilet) && !MouseTouching(oDoor)) {	
			
		// drop bowl
		if (numberOfBowls > 0) {
			var tBowl = ds_list_find_value(bowls, numberOfBowls - 1);
			tBowl.visible = true;
			tBowl.carried = false;
			tBowl.x = oPlayer.x;
			tBowl.y = oPlayer.y;
			ds_list_delete(bowls, numberOfBowls - 1);
			numberOfBowls--;
		}
}
else if (canBowl && lmbPressed) {
	var sol = GetSolidAtMouse();
	if (sol != noone) {
		if (point_distance(x, y, sol.x, sol.y) >= 24) {
			// drop bowl
		}		
	}
	else {
		// drop bowl
	}
}

*/