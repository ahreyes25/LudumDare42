var oCollide = argument0;
/*
// collisions
// horizontal
if (place_meeting(x + hspd, y, oCollide)) {
	while (!place_meeting(x + sign(hspd), y, oCollide)) {
		phy_position_x += sign(hspd);	
	}
	hspd = 0;
}
*/
phy_position_x += hspd;

/*
// vertical
if (place_meeting(x, y + vspd, oCollide)) {
	while (!place_meeting(x, y + sign(vspd), oCollide)) {
		phy_position_y += sign(vspd);	
	}
	vspd = 0;
}
*/
phy_position_y += vspd;