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
	}
#endregion

#region // Interact w/World
	Input();

	// Drop One Bowl
	if (kPressed) {
		DropBowl();
	}

	// Carry Dog
	if (carryDog) {
		if (kPressed) {
			carryDog = false;	
		}
	}

	// Carrying dog or bowls
	canOpen = true;	
	if (carryDog || numberOfBowls > 0) {
		canOpen = false;
	}
#endregion

depth				= -y;
phy_fixed_rotation	= true;
phy_rotation		= 0;

Collisions(oSolid);