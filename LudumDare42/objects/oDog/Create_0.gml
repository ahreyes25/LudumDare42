#region // Player States
enum dogState {
	idle,
	run,
	eat,
	poop,
	dead,
	carry
}
#endregion

sprite_index	= sDogBrownIdle1;
image_speed		= 0.5;
idleSprite		= sprite_index;
hspd			= 0;
vspd			= 0;
horiz			= 0;
vert			= 0;
movementSpeed	= 3;
state			= dogState.idle;
horizFacing		= 1;
vertFacing		= 1;
xscale			= 1;
yscale			= 1;

right			= false;
left			= false;
down			= false;
up				= false;