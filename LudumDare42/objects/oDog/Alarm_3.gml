/// @description Do Northing
if (Chance(25)) {
	rx = random_range(24, room_width  - 24);
	ry = random_range(24, room_height - 24);
	state = dogState.moveToRandom;	
}