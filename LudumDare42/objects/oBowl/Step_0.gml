HideOnDistance();

visible				= !carried;
phy_active			= visible;
depth				= -y;
image_index			= full;
sprite_index		= sBowl;
phy_fixed_rotation	= true;
phy_rotation		= 0;

if (carried) {
	phy_position_x = oPlayer.x;
	phy_position_y = oPlayer.y;
	depth = oPlayer.depth - 1;
}

x = phy_position_x;
y = phy_position_y;

if (capacity > 0) {
	full = true;	
	playedSound = false;
}
else {
	full = false;	
	if (!playedSound) {
		audio_play_sound(sfBowlEmpty, 0, 0);	
		playedSound = true;
	}
}

Input();
// Pick Bowl Up
if (kPressed && !carried && canBePickedUp) {
	var person = collision_rectangle(x - 12, y - 12, x + 12, y + 12, oPlayer, false, true);
	if (person != noone) {
		if (!person.carryDog && person.canGetBowl) {
			ds_list_add(oPlayer.bowls, id);
			oPlayer.numberOfBowls++;
			visible = false;
			carried = true;
			canBePickedUp = false;
			oDungeonController.numberOfBowls--;
			audio_play_sound(sfBowl, 0, 0);
		}
	}
}