HideOnDistance();

depth = -y;
depth = -phy_position_y;

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
			
			if (id.object_index == oFridge) {
				audio_play_sound(sfFridge, 0, 0);	
				ShakeScreen(3, 10);
			}
			if (id.object_index == oPantry) {
				audio_play_sound(sfPantry, 0, 0);
				ShakeScreen(2, 10);
			}
			if (id.object_index == oToilet) {
				audio_play_sound(sfToilet, 0, 0);
				ShakeScreen(2, 10);
			}
			if (id.object_index == oDumpster) {
				audio_play_sound(sfDumpsterOpen, 0, 0);
				ShakeScreen(4, 10);
			}
		}
		else {
			Words("Hands Are Full!");	
		}
	}
}

var d = collision_circle(x, y, 20, oDog, false, true);
if (d != noone) {
	durability--;	
}

if (durability <= 0 && !unbreakable) {
	ShakeScreen(8, 10);
	audio_play_sound(sfWallBreak, 0, 0);
	instance_destroy();
}

phy_fixed_rotation = true;
phy_rotation = 0;