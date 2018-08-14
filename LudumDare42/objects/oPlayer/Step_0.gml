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
				audio_stop_sound(sfFootstep);

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
				
				if (image_index == 0 || image_index == 2) {
					audio_play_sound(sfFootstep, -1, 0);	
				}
			break;
		#endregion	
	}
#endregion

#region // Interact w/World
	Input();

	// Drop One Bowl
	if (kPressed) {
		var b = collision_circle(x, y, 24, oBowl, false, true);
		if (b == noone) {
			DropBowl();
		}
		else {
			if (b.carried) {
				DropBowl();
			}
		}
	}

	// Carry Dog
	if (carryDog) {
		if (kPressed) {
			carryDog = false;	
			audio_play_sound(sfPickupDog, 0, 0);
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