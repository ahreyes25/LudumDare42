var obj = argument0;

if (obj.object_index == oDoor) {
	if (mouse_x > obj.x - 12 && mouse_x < obj.x + 36 &&
		mouse_y > obj.y - 12 && mouse_y < obj.y + 36) {
			return true;		
	}
}
else {
	if (mouse_x > obj.x - (sprite_get_width(obj.sprite_index)  / 2) && mouse_x < obj.x + (sprite_get_width(obj.sprite_index)  / 2) &&
		mouse_y > obj.y - (sprite_get_height(obj.sprite_index) / 2) && mouse_y < obj.y + (sprite_get_height(obj.sprite_index) / 2)) {
			return true;		
	}
}
return false;