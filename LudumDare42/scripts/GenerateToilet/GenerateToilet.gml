var r = argument0;

var desX = random_range(r.x, r.x + (r.roomWidth  * unitWidth));
var desY = random_range(r.y, r.y + (r.roomHeight * unitHeight));

while (instance_place(desX, desY, oSolid)) {
	desX = random_range(r.x, r.x + (r.roomWidth  * unitWidth));
	desY = random_range(r.y, r.y + (r.roomHeight * unitHeight));
}
instance_create_layer(desX, desY, "World", oToilet);