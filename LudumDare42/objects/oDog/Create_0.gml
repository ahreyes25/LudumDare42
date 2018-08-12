#region // Player States
enum dogState {
	idle,
	target,
	carried,
	poop
}
#endregion

hunger			= 100;
thirst			= 100;
bathroom		= 0;
bathroomLimit	= 50;
canBePickedUp	= true;
carried			= false;

target			= noone;

sprite_index	= sDogBrownIdle1;
image_speed		= 0.5;
idleSprite		= sprite_index;
hspd			= 0;
vspd			= 0;
horiz			= 0;
vert			= 0;
movementSpeed	= 1;
state			= dogState.idle;
horizFacing		= 1;
vertFacing		= 1;
xscale			= 1;
yscale			= 1;

right			= false;
left			= false;
down			= false;
up				= false;