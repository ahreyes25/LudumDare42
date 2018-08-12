#region // Input & Direction
Input();

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
	
#region // State Machine
switch (state) {
	#region // idle
	case playerState.idle:
		// set moving state
		if (horiz != 0 || vert != 0) {
			state = playerState.run;
		}

	break;
	#endregion
	
	#region // run
	case playerState.run:
		hspd = horiz * movementSpeed;
		vspd = vert  * movementSpeed;
		
		// Go back to idle state
		if (hspd == 0 && vspd == 0) {
			state = playerState.idle;		
		}
	break;
	#endregion
	
	#region // dive
	case playerState.dive:
	break;
	#endregion
	
	#region // roll
	case playerState.roll:
	break;
	#endregion
	
	#region // inBag
	case playerState.inBag:
	break;
	#endregion
	
	#region // carryDog
	case playerState.carryDog:
	break;
	#endregion
}
#endregion

DropBowl();

Collisions(oSolid);

depth = -y;