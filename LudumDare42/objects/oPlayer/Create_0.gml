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
canOpen			= true;
canBowl			= true;
numberOfBowls	= 0;
bowls			= ds_list_create();

for (var i = 0; i < 5; i++) {
	var tBowl = instance_create_layer(x, y, "World", oBowl);
	ds_list_add(bowls, tBowl);
	numberOfBowls++;
}