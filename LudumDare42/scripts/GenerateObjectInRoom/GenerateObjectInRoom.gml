var r = argument0;
var o = argument1;

// Couch
var desX = random_range(r.x + sprite_get_width(o),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(o));
var desY = random_range(r.y + sprite_get_height(o), r.y + (r.roomHeight * unitHeight) - sprite_get_height(o));

while (place_meeting(desX, desY, oSolid) || place_meeting(desX, desY, oSemiSolid)) {
	desX = random_range(r.x + sprite_get_width(o),  r.x + (r.roomWidth  * unitWidth)  - sprite_get_width(o));
	desY = random_range(r.y + sprite_get_height(o), r.y + (r.roomHeight * unitHeight) - sprite_get_height(o));
}
instance_create_layer(desX, desY, "World", o);