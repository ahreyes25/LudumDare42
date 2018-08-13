/// @description Room Generation

var r = argument0;

// room top
for (var i = 0; i <= r.roomWidth; i++) {
		
	var xDesired = r.x + (i * unitWidth);
	var yDesired = r.y;
		
	if (!InsideRoom(xDesired, yDesired, r.id, false)) {
		// Percent chance to create a door instead
		if (Chance(5)) {
			instance_create_layer(xDesired, yDesired, "World", oDoor);
			
		}
		else {
			instance_create_layer(xDesired, yDesired, "World", oSolid);
			
		}
	}
}

// room bottom
for (var i = 0; i <= r.roomWidth; i++) {
	var xDesired = r.x + (i * unitWidth);
	var yDesired = r.y + (r.roomHeight * unitHeight);
		
	if (!InsideRoom(xDesired, yDesired, r.id, false)) {
		// Percent chance to create a door instead
		if (Chance(5)) {
			instance_create_layer(xDesired, yDesired, "World", oDoor);
			
		}
		else {
			instance_create_layer(xDesired, yDesired, "World", oSolid);	
			
		}
	}
}

// room right
for (var i = 0; i <= r.roomHeight; i++) {
	var xDesired = r.x + (r.roomWidth * unitWidth);
	var yDesired = r.y + (i * unitHeight);
		
	if (!InsideRoom(xDesired, yDesired, r.id, false)) {
		// Percent chance to create a door instead
		if (Chance(5)) {
			instance_create_layer(xDesired, yDesired, "World", oDoor);
			
		}
		else {
			instance_create_layer(xDesired, yDesired, "World", oSolid);
			
		}
	}	
}

// room left
for (var i = 0; i <= r.roomHeight; i++) {
	var xDesired = r.x;
	var yDesired = r.y + (i * unitHeight);
		
	if (!InsideRoom(xDesired, yDesired, r.id, false)) {
		// Percent chance to create a door instead
		if (Chance(5)) {
			instance_create_layer(xDesired, yDesired, "World", oDoor);
			
		}
		else {
			instance_create_layer(xDesired, yDesired, "World", oSolid);	
			
		}
	}
}