/// @description Place Player

// Create player not in wall
var rx = random_range(0, room_width);
var ry = random_range(0, room_height);

while (collision_point(rx, ry, oSolid, false, true) != noone || !InsideRoom(rx, ry, noone, true)) {
	rx = random_range(0, room_width);
	ry = random_range(0, room_height);
}
instance_create_layer(rx, ry, "Game", oPlayer);


rx = random_range(0, room_width);
ry = random_range(0, room_height);
instance_create_layer(rx, ry, "Game", oDog);

DumpstersOutside();