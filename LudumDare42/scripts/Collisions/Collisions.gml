var oCollide = argument0;

// collisions
// horizontal
if (place_meeting(x + hspd, y, oCollide)) {
	while (!place_meeting(x + sign(hspd), y, oCollide)) {
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd;

// vertical
if (place_meeting(x, y + vspd, oCollide)) {
	while (!place_meeting(x, y + sign(vspd), oCollide)) {
		y += sign(vspd);	
	}
	vspd = 0;
}
y += vspd;