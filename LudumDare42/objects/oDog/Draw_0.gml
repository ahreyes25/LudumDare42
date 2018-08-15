image_xscale = horizFacing * scale;
image_yscale = scale;

var walkSpeed = 0.7;
var idleSpeed = 0.5;

switch (state) {
	#region // idle
	case dogState.idle: 
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
	break;
	#endregion
	
	#region // move to random
	case dogState.moveToRandom:
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
	break;
	#endregion
	
	#region // move to Door
	case dogState.moveToDoor:
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
	break;
	#endregion
	
	#region // move to player
	case dogState.moveToPlayer: 
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
	break;
	#endregion
	
	#region // move to bowl
	case dogState.moveToBowl: 
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
		
		if (foodBowl != noone) {
			draw_sprite(sCloud, 0, x + (6 * image_xscale), y - (13 * scale));
			draw_sprite_ext(sBowl1, 0, x + (6 * image_xscale), y - (12 * scale), 0.75, 0.75, 0, c_white, 1);
		}
	break;
	#endregion
	
	#region // move to toilet
	case dogState.moveToToilet: 
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
		if (!place_meeting(x, y, oToilet)) {
			if (toilet != noone) {
				draw_sprite(sCloud, 0, x + (6 * image_xscale), y - (13 * scale));
				draw_sprite_ext(sToilet, 0, x + (6 * image_xscale), y - (12 * scale), 0.25, 0.25, 0, c_white, 1);
			}
		}
	break;
	#endregion
	
	#region // move to Center
	case dogState.moveToCenter:
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
	break;
	#endregion
	
	#region // move into door
	case dogState.moveIntoDoor: 
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
	break;
	#endregion
	
	#region // knocking
	case dogState.knockingOnDoor:
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
	break;
	#endregion
	
	#region // eat
	case dogState.eat: 
		image_speed		= 0.05;
		sprite_index	= sDogEat;
		draw_sprite_ext(sSmile, 0, x + (6 * image_xscale), y - (12 * scale), 1, 1, 0, c_white, 1);
	break;
	#endregion
	
	#region // drink
	case dogState.drink: 
		image_speed		= 0.05;
		sprite_index	= sDogEat;
		draw_sprite_ext(sSmile, 0, x + (6 * image_xscale), y - (12 * scale), 1, 1, 0, c_white, 1);
	break;
	#endregion
	
	#region // poop
	case dogState.poop: 
		image_speed		= 0;
		sprite_index	= sDogPoop;
	break;
	#endregion
	
	#region // carried
	case dogState.carried: 
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
		draw_text_transformed(x - 6, y + 4, name, 0.3, 0.3, 0);
		draw_sprite_ext(sHeart, 0, x + (6 * image_xscale), y - (6 * scale), 1, 1, 0, c_white, 1);
	break;
	#endregion
	
	#region // do nothing
	case dogState.doNothing:
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
	break;
	#endregion
	
	#region // good boy
	case dogState.oldAge:
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
	break;
	#endregion
}

draw_self();

//draw_text(x, y, age);

//draw_line(x, y, x + (hspd * movementSpeed * 24), y + (vspd  * movementSpeed * 24));