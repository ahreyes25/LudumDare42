HideOnDistance();

if (place_meeting(x, y, oDoor)) {
	instance_destroy();	
}

// Open and close things
Input();
if (jPressed) {
	var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
	if (person != noone) {
		if (person.canOpen) {
			open = !open;	
		}
	}
}

phy_fixed_rotation = true;
phy_rotation = 0;