event_inherited();

if (open && image_index == 0) {
	if (image_index <= 3) {
		image_speed = 0.5;	
	}
}
else if (open && image_index >= 2) {
	image_speed = 0;
	image_index = 3;	
}

if (!open && image_index != 0) {
	image_index -= 0.5;
}
else if (!open && image_index <= 1) {
	image_speed = 0;
	image_index = 0;	
}


// Fill bowl
if (kPressed && open) {
	var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
	if (person != noone) {
		var tBowl = ds_list_find_value(oPlayer.bowls, oPlayer.numberOfBowls - 1);
		tBowl.full = true;
		tBowl.capacity = tBowl.capacityLimit;
	}
}