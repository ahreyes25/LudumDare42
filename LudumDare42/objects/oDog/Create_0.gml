#region // Player States
enum dogState {
	idle,
	moveToRandom,
	moveToDoor,
	moveToPlayer,
	moveToBowl,
	moveToToilet,
	knockingOnDoor,
	eat,
	drink,
	poop,
	carried,
	doNothing,
	dead,
}
#endregion

hunger			= 100;
thirst			= 100;
bathroom		= 0;
bathroomLimit	= 50;
canBePickedUp	= true;
carried			= false;
inside			= InsideRoom(x, y, false, true);
rx				= random_range(24, room_width  - 24);
ry				= random_range(24, room_height - 24);

sprite_index	= sDogBrownIdle1;
image_speed		= 0.5;
idleSprite		= sprite_index;
hspd			= 0;
vspd			= 0;
movementSpeed	= 1;
state			= dogState.moveToPlayer;
horizFacing		= 1;
vertFacing		= 1;

right			= false;
left			= false;
down			= false;
up				= false;