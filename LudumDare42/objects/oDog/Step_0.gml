HideOnDistance();

#region // Direction
horiz = right - left;
vert  = down  - up;

// Which way we faced last
if (right)
	horizFacing =  1;
else if (left)
	horizFacing = -1;
	
if (up)
	vertFacing = -1;
else if (down)
	vertFacing =  1;
#endregion

#region // Determine Desire
if (thirst <= 30) {
	target = instance_nearest(x, y, oToilet);	
	if (target != noone)
		state = dogState.target;
	else 
		state = dogState.idle; // CHANGE
}
else if (hunger <= 30) {
	target = instance_nearest(x, y, oBowl);	
	if (target != noone)
		state = dogState.target;
	else 
		state = dogState.idle; // CHANGE
}
else if (bathroom >= bathroomLimit) {
	state = dogState.poop;	
}
else {
	state = dogState.idle;	
}
#endregion

#region // State Machine
switch (state) {
	#region // target
	case dogState.target:
		if (!place_meeting(x, y, target)) {
			var dir = point_direction(x, y, target.x, target.y);
			hspd = lengthdir_x(movementSpeed, dir);
			vspd = lengthdir_y(movementSpeed, dir);
		}
	break;
	#endregion
}
#endregion

#region // Interact w/Player
if (keyboard_check_pressed(ord("L"))) {
	var play = collision_circle(x, y, 48, oPlayer, false, true);
	if (play != noone) {
		if (!play.carryDog) {
			carried = !carried;
		}
	}
}

if (carried) {
	phy_active		= false;
	phy_position_x	= oPlayer.x;
	phy_position_y	= oPlayer.y;
	phy_speed_x		= 0;
	phy_speed_y		= 0;
	x				= phy_position_x;
	y				= phy_position_y;
	depth			= oPlayer.depth - 1;
	oPlayer.carryDog= true;
}
else {
	phy_active		= true;	
}
#endregion

phy_fixed_rotation	= true;
phy_rotation		= 0;
x					= phy_position_x;
y					= phy_position_y;

Collisions(oSolid);