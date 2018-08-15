ScreenShake();

if (keyboard_check(ord("H"))) {
	view_visible[0] = false;
	view_visible[1] = true;
	limitDrawCalls	= false;
	oPlayer.state   = playerState.idle;
	oPlayer.hspd    = 0;
	oPlayer.vspd    = 0;
}	
else {
	view_visible[0] = true;	
	view_visible[1] = false;
	limitDrawCalls	= true;
}


// End Game
if ((numberOfDeadDogs + numberOfGoodBoys) == numberOfDogsToStart) {
	instance_create_layer(0, 0, "UI", oFade);
	global.points = points;
	global.largestDog = largestDog;
	global.goodBoys = numberOfGoodBoys;
}