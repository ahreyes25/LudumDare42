if (fadeOut) {
	if (image_alpha < 1) {
		image_alpha += 0.05;	
	}
	else {
		room_goto_next();
	}
}
else if (fadeIn) {
	if (image_alpha > 0) {
		image_alpha -= 0.05;	
	}
	else {
		if (alarm[0] == -1) {
			alarm[0] = 30;	
		}
	}
}