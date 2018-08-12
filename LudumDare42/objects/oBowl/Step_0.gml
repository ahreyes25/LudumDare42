HideOnDistance();

visible			= !carried;
phy_active		= visible;
depth			= -y;
image_index		= full;
sprite_index	= sBowl;

if (carried) {
	phy_position_x = oPlayer.x;
	phy_position_y = oPlayer.y;
}

x = phy_position_x;
y = phy_position_y;

if (capacity > 0) {
	full = true;	
}
else {
	full = false;	
}

Input();
// Pick Bowl Up
if (lPressed && !carried && canBePickedUp) {
	var person = collision_rectangle(x - 12, y - 12, x + 12, y + 12, oPlayer, false, true);
	if (person != noone) {
		ds_list_add(oPlayer.bowls, id);
		oPlayer.numberOfBowls++;
		visible = false;
		carried = true;
		canBePickedUp = false;
	}
}