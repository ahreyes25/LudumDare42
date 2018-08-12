var r = argument0;

var desX = random_range(r.x + sprite_get_width(sToilet),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(sToilet));
var desY = random_range(r.y + sprite_get_height(sToilet), r.y + (r.roomHeight * unitHeight) - sprite_get_height(sToilet));

while (instance_place(desX, desY, oSolid)) {
	desX = random_range(r.x + sprite_get_width(sToilet),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(sToilet));
	desY = random_range(r.y + sprite_get_height(sToilet), r.y + (r.roomHeight * unitHeight) - sprite_get_height(sToilet));
}
instance_create_layer(desX, desY, "World", oToilet);