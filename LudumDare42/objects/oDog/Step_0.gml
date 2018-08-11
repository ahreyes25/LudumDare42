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

#region // State Machine
switch (state) {
	#region // idle
	case dogState.idle:
	break;
	#endregion
	
	#region // run
	case dogState.run:

	break;
	#endregion
	
	#region // eat
	case dogState.eat:
	break;
	#endregion
	
	#region // poop
	case dogState.poop:
	break;
	#endregion 
	
	#region // dead
	case dogState.dead:
	break;
	#endregion
	
	#region // carry
	case dogState.carry:
	break;
	#endregion
}
#endregion

if (alarm[0] == -1) {
	alarm[0] = irandom_range(30, 90);	
}