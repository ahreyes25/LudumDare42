/// @Override

HideOnDistance();

if (place_meeting(x, y, oDoor)) {
	instance_destroy();	
}

// Get Bowls
Input();
if (kPressed) {
	var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
	if (person != noone) {
		GivePlayerBowl();
	}
}

phy_fixed_rotation = true;
phy_rotation = 0;