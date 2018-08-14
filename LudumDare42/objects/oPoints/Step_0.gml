image_alpha -= 0.01;

y--;

if (image_alpha <= 0) {
	instance_destroy();	
}

depth = -10000;