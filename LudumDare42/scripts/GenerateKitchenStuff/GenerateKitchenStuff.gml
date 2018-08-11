var r = argument0;

var desX = random_range(r.x + sprite_get_width(oFridge),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(oFridge));
var desY = random_range(r.y + sprite_get_height(oFridge), r.y + (r.roomHeight * unitHeight) - sprite_get_height(oFridge));

while (instance_place(desX, desY, oSolid)) {
	desX = random_range(r.x, r.x + (r.roomWidth  * unitWidth));
	desY = random_range(r.y, r.y + (r.roomHeight * unitHeight));
}
instance_create_layer(desX, desY, "World", oFridge);

desX = random_range(r.x + sprite_get_width(oPantry),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(oPantry));
desY = random_range(r.y + sprite_get_height(oPantry), r.y + (r.roomHeight * unitHeight) - sprite_get_height(oPantry));

while (instance_place(desX, desY, oSolid) || instance_place(desX, desY, oFridge)) {
	desX = random_range(r.x + sprite_get_width(oPantry),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(oPantry));
	desY = random_range(r.y + sprite_get_height(oPantry), r.y + (r.roomHeight * unitHeight) - sprite_get_height(oPantry));
}
instance_create_layer(desX, desY, "World", oPantry);