
Input();

if (kPressed) {
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