HideOnDistance();

if (place_meeting(x, y, oDoor)) {
	instance_destroy();	
}

// Open and close things
Input();
if (jPressed) {
	var person = collision_rectangle(x - 12, y - 12, x + sprite_get_width(sprite_index) + 12, y + sprite_get_height(sprite_index) + 12, oPlayer, false, true);
	if (person != noone) {
		if (person.canOpen) {
			open = !open;	
			audio_play_sound(sfDoor, 0, 0);
			ShakeScreen(4, 10);
		}
	}
}

if (open) {
	phy_active  = false;
	image_index = 1;
	mask_index  = sEmptyMask;
}
else {
	phy_active  = true;
	image_index = 0;
	mask_index  = sDoor;
}

if (life <= 0) {
	open = true;
	life = 100;
}