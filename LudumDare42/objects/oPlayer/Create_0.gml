#region // Player States
enum playerState {
	idle,
	run,
	dive,
	roll,
	inBag,
	carryDog
}
#endregion

sprite_index	= sPlayerIdleFront;
image_speed		= 0.5;
hspd			= 0;
vspd			= 0;
horiz			= 0;
vert			= 0;
movementSpeed	= 3;
state			= playerState.idle;
horizFacing		= 1;
vertFacing		= 1;
xscale			= 1;
yscale			= 1;