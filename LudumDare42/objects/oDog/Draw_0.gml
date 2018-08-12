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
	
	#region // target
	#endregion
}

draw_self();


draw_text_transformed(x, y - 10,	"s: " + string(state),		0.5, 0.5, 0);
/*
draw_text_transformed(x, y -  5,	"h: " + string(hunger),		0.5, 0.5, 0);
draw_text_transformed(x, y +  5,	"t: " + string(thirst),		0.5, 0.5, 0);
draw_text_transformed(x, y + 10,	"b: " + string(bathroom),	0.5, 0.5, 0);
*/