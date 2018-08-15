/// @Override

HideOnDistance();

if (place_meeting(x, y, oDoor)) {
	instance_destroy();	
}

// Get Bowls
Input();
var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
if (person != noone) {
	
	if (!words) {
		Words("L to get bowl.");
		words = true;
		
		if (alarm[1] == -1) {
			alarm[1] = 120;	
		}
	}
	
	if (lPressed) {
		GivePlayerBowl();
	}
}

phy_fixed_rotation = true;
phy_rotation = 0;