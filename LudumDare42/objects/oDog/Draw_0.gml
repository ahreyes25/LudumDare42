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
	break;
	#endregion
	
	#region // move to toilet
	case dogState.moveToToilet: 
		image_speed		= walkSpeed;
		sprite_index	= sDogWalk;
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
	break;
	#endregion
	
	#region // drink
	case dogState.drink: 
		image_speed		= 0.05;
		sprite_index	= sDogEat;
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
	break;
	#endregion
	
	#region // do nothing
	case dogState.doNothing:
		image_speed		= idleSpeed;
		sprite_index	= sDogIdle;
	break;
	#endregion
}

draw_self();

//draw_text(x, y, state);

//draw_line(x, y, x + (hspd * movementSpeed * 24), y + (vspd  * movementSpeed * 24));