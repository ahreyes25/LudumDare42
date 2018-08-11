image_xscale = horizFacing * xscale;

switch (state) {
	#region // idle
	case dogState.idle:
		if (vertFacing == 1) 
			sprite_index = sDogBrownIdle1;
		else 
			sprite_index = sDogBrownIdle1;
	break;
	#endregion
	
	#region // run
	case dogState.run:
		if (vert == -1)
			sprite_index = sDogBrownIdle1;
		else
			sprite_index = sDogBrownIdle1;
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

draw_self();

draw_text_transformed(x, y, state, 0.5, 0.5, 0);
image_xscale = horizFacing * xscale;

switch (state) {
	#region // idle
	case dogState.idle:
		if (vertFacing == 1) 
			sprite_index = idleSprite;
		else 
			sprite_index = idleSprite;
	break;
	#endregion
	
	#region // run
	case dogState.run:
		if (vert == -1)
			sprite_index = sDogBrownIdle1;
		else
			sprite_index = sDogBrownIdle1;
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

draw_self();

draw_text_transformed(x, y, state, 0.5, 0.5, 0);