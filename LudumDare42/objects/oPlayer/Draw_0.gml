image_xscale = horizFacing * xscale;

switch (state) {
	#region // idle
	case playerState.idle:
		if (vertFacing == 1)
			sprite_index = sPlayerIdleFront;
		else 
			sprite_index = sPlayerIdleBack;
	break;
	#endregion
	
	#region // run
	case playerState.run:
		if (vert == -1)
			sprite_index = sPlayerRunBack;
		else
			sprite_index = sPlayerRunFront;
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

draw_self();

draw_text_transformed(x, y, state, 0.5, 0.5, 0);

// Draw Bowls
for (var i = 0; i < numberOfBowls; i++) {
	var tBowl = ds_list_find_value(bowls, i);
	draw_sprite(sBowl, tBowl.full, x + (4 * image_xscale), y - 4 - (4 * i));	
}