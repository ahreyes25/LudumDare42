// Inherit the parent event
event_inherited();

if (!carried) {
	// Pick up body
	if (keyboard_check_pressed(ord("K"))) {
		var play = collision_circle(x, y, 12, oPlayer, false, true);
		if (play != noone) {
			if (!play.carryDog && canBePickedUp) {
				canBePickedUp		= false;
				carried				= true;
				oPlayer.carryDog	= true;
				
				if (oPlayer.numberOfBowls > 0) {
					DropAllBowls();	
				}
			}
		}
	}
}
// carrying
else {
	hspd				= 0;
	vspd				= 0;
	phy_active			= false;
	phy_position_x		= oPlayer.x;
	phy_position_y		= oPlayer.y;
	x					= phy_position_x;
	y					= phy_position_y;
	depth				= oPlayer.depth - 1;
	oPlayer.carryDog	= true;
			
	if (keyboard_check_pressed(ord("K"))) {
		carried			 = false;
		oPlayer.carryDog = false;
		canBePickedUp	 = false;
					
		if (alarm[0] == -1) {
			alarm[0] = 10;	
		}
					
		phy_active		= true;	
		
		// Check for Dumpster
		var dump = collision_rectangle(x - 18, y - 18, x + 18, y + 18, oDumpster, false, true);
		if (dump != noone) {
			if (dump.open) {
				AddPoints(1);
				audio_play_sound(sfDumpsterDog, 0, 0);
				instance_destroy();
				SarcasticComment();
			}
		}
	}
}