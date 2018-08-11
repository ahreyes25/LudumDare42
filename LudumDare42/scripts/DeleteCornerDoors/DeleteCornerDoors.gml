
// delete corner doors
// check left & up
if (instance_place(x - 1, y, oSolid)) {
	if (instance_place(x, y - 1, oSolid)) {
		instance_destroy();	
	}
}

// check up & right
if (instance_place(x, y - 1, oSolid)) {
	if (instance_place(x + 25, y, oSolid)) {
		instance_destroy();	
	}
}

// check right & down
if (instance_place(x + 25, y, oSolid)) {
	if (instance_place(x, y + 25, oSolid)) {
		instance_destroy();	
	}
}

// check down & left
if (instance_place(x, y + 25, oSolid)) {
	if (instance_place(x - 1, y, oSolid)) {
		instance_destroy();	
	}
}