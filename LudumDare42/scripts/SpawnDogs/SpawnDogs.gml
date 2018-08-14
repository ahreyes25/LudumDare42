// Pick a random door
var rx = 0;
var ry = 0;
var tDoor;

tDoor = InstanceNthNearest(oPlayer.x, oPlayer.y, oDoor, irandom_range(0, oDungeonController.numberOfDoors - 1));

if (tDoor != noone) {
	while (tDoor.sideOut == "") {
		tDoor = InstanceNthNearest(oPlayer.x, oPlayer.y, oDoor, irandom_range(0, oDungeonController.numberOfDoors - 1));
	}
}

if (tDoor != noone) {
	//	get door side out
	if (tDoor.sideOut == "left") {
		rx = 0;
		ry = tDoor.y + 12;
	}
	if (tDoor.sideOut == "right") {
		rx = room_width;
		ry = tDoor.y + 12;
	}
	if (tDoor.sideOut == "up") {
		rx = tDoor.x + 12;
		ry = 0;
	}
	if (tDoor.sideOut == "down") {
		rx = tDoor.x + 12;
		ry = room_height;
	}
	
	instance_create_layer(rx, ry, "Game", oDog);
	audio_play_sound(sfNewDog, 0, 0);
}