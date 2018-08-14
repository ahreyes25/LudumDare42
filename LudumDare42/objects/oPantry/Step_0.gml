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
if (lPressed && open) {
	var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
	if (person != noone) {
		if (oPlayer.numberOfBowls > 0) {
			var tBowl = ds_list_find_value(oPlayer.bowls, oPlayer.numberOfBowls - 1);
			if (tBowl != noone) {
				tBowl.full = true;
				tBowl.capacity = tBowl.capacityLimit;
				audio_play_sound(sfFoodInBowl, 0, 0);
			}
		}
	}
}

var dog = collision_circle(x, y, 24, oDog, false, true);
if (dog != noone) {
	if (Chance(1)) {
		if (open && canDogClose) {
			open = false;
			canDogClose = false;
		}
		else {
			canDogClose = false;
			if (alarm[1] == -1) {
				alarm[1] = 90;	
			}
		}
	}
}

durability += 1;