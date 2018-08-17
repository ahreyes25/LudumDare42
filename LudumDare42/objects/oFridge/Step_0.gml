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
var person = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oPlayer, false, true);
if (person != noone) {
	if (jPressed && open) {
		if (oPlayer.numberOfBowls > 0) {
			
			for (var i = oPlayer.numberOfBowls - 1; i >= 0; i--) {
				var tBowl = ds_list_find_value(oPlayer.bowls, i);
				if (tBowl != noone) {
					if (!tBowl.full) {
						audio_play_sound(sfFoodInBowl, 0, 0);
						tBowl.full = true;
						tBowl.capacity = tBowl.capacityLimit;
						break;
					}
				}
			}
		}
		else {
			Words("Need a dog bowl.");	
		}
	}
	else {
		if (open && !words) {
			Words("J to get food.");
			words = true;
			
			if (alarm[2] == -1) {
				alarm[2] = 240;	
			}
		}
		else if (!open && !words) {
			Words("J to open.");
			words = true;
			
			if (alarm[2] == -1) {
				alarm[2] = 240;	
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
			Words("How did a dog close the fridge?");
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