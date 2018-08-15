#region // Player States
enum dogState {
	idle,
	moveToRandom,
	moveToDoor,
	moveToPlayer,
	moveToBowl,
	moveToToilet,
	moveToCenter,
	moveToTopQuad,
	moveToRightQuad,
	moveToBottomQuad,
	moveToLeftQuad,
	moveIntoDoor,
	knockingOnDoor,
	eat,
	drink,
	poop,
	carried,
	doNothing,
	dead,
	oldAge,
}
#endregion

hunger			= 100;
thirst			= 100;
bathroom		= 40;
bathroomLimit	= 50;
canBePickedUp	= true;
carried			= false;
inside			= InsideRoom(x, y, false, false);
rx				= random_range(24, room_width  - 24);
ry				= random_range(24, room_height - 24);
foodBowl		= noone;
toilet			= noone;
name			= DogName();

sprite_index	= sDogIdle;
image_speed		= 0.5;
idleSprite		= sprite_index;
hspd			= 0;
vspd			= 0;
movementSpeed	= 1;
state			= dogState.moveToDoor;
horizFacing		= 1;
vertFacing		= 1;
scale			= 1;
alarm[2]		= random_range(100, 200);

right			= false;
left			= false;
down			= false;
up				= false;
age				= 0;
oldAge			= false;