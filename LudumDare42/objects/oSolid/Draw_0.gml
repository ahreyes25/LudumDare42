var wallLeft  = false;
var wallRight = false;
var wallUp	  = false;
var wallDown  = false;

// check left
var l = collision_point(x - 12, y, oSolid, false, true);
if (l != noone) {
	if (l.object_index != oDoor && l.object_index != oDumpster && l.object_index != oToilet && l.object_index != oFridge && l.object_index != oPantry) {
		wallLeft = true;	
	}
}

l = collision_point(x + 36, y, oSolid, false, true);
// check right
if (l != noone) {
	if (l.object_index != oDoor && l.object_index != oDumpster && l.object_index != oToilet && l.object_index != oFridge && l.object_index != oPantry) {
		wallRight = true;	
	}
}

l = collision_point(x, y - 12, oSolid, false, true);
// check up
if (l != noone) {
	if (l.object_index != oDoor && l.object_index != oDumpster && l.object_index != oToilet && l.object_index != oFridge && l.object_index != oPantry) {
		wallUp = true;	
	}
}

l = collision_point(x, y + 36, oSolid, false, true)
// check down
if (l != noone) {
	if (l.object_index != oDoor && l.object_index != oDumpster && l.object_index != oToilet && l.object_index != oFridge && l.object_index != oPantry) {
		wallDown = true;	
	}
}

if (!wallLeft && !wallRight && !wallUp && wallDown) {
	draw_sprite(sWallTiles, 0, x, y);	
}
else if (!wallLeft && wallRight && !wallUp && !wallDown) {
	draw_sprite(sWallTiles, 1, x, y);	
}
else if (wallLeft && !wallRight && !wallUp && !wallDown) {
	draw_sprite(sWallTiles, 2, x, y);	
}
else if (!wallLeft && !wallRight && wallUp && !wallDown) {
	draw_sprite(sWallTiles, 3, x, y);	
}
else if (wallLeft && wallRight && wallUp && wallDown) {
	draw_sprite(sWallTiles, 4, x, y);	
}
else if (!wallLeft && wallRight && !wallUp && wallDown) {
	draw_sprite(sWallTiles, 5, x, y);	
}
else if (wallLeft && !wallRight && !wallUp && wallDown) {
	draw_sprite(sWallTiles, 6, x, y);	
}
else if (!wallLeft && !wallRight && !wallUp && !wallDown) {
	draw_sprite(sWallTiles, 7, x, y);	
}
else if (!wallLeft && wallRight && wallUp && !wallDown) {
	draw_sprite(sWallTiles, 9, x, y);	
}
else if (wallLeft && !wallRight && wallUp && !wallDown) {
	draw_sprite(sWallTiles, 10, x, y);	
}
else if (wallLeft && !wallRight && wallUp && wallDown) {
	draw_sprite(sWallTiles, 11, x, y);	
}
else if (!wallLeft && wallRight && wallUp && wallDown) {
	draw_sprite(sWallTiles, 12, x, y);	
}
else if (wallLeft && wallRight && !wallUp && wallDown) {
	draw_sprite(sWallTiles, 13, x, y);	
}
else if (wallLeft && wallRight && wallUp && !wallDown) {
	draw_sprite(sWallTiles, 14, x, y);	
}
else if (wallLeft && wallRight && !wallUp && !wallDown) {
	draw_sprite(sWallTiles, 16, x, y);	
}
else if (!wallLeft && !wallRight && wallUp && wallDown) {
	draw_sprite(sWallTiles, 15, x, y);	
}