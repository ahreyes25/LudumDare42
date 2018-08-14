event_inherited();

if (open && image_index == 0) {
	if (image_index <= 4) {
		image_speed = 0.5;	
	}
}
else if (open && image_index >= 3) {
	image_speed = 0;
	image_index = 4;	
}

if (!open && image_index != 0) {
	image_index -= 0.5;
}
else if (!open && image_index <= 1) {
	image_speed = 0;
	image_index = 0;	
}

durability += 1;