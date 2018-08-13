image_xscale = horizFacing * scale;
image_yscale = 1 * scale;

switch (state) {
	#region // idle
	case dogState.idle: 
		sprite_index = sDogBrownIdle1;
	break;
	#endregion
}

draw_self();

//draw_text(x, y, state);

//draw_line(x, y, x + (hspd * movementSpeed * 24), y + (vspd  * movementSpeed * 24));