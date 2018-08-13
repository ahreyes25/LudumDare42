HideOnDistance();

#region // Direction
	horizFacing = sign(hspd);
	vertFacing	= sign(vspd);
	if (horizFacing == 0) {
		horizFacing = image_xscale;
	}
#endregion

switch (state) {
	#region // idle
		case dogState.idle:
			hspd = 0;
			vspd = 0;
			
			if (!InsideRoom(x, y, false, true)) {
				state = dogState.moveToDoor;
			}
			else if (thirst <= 50) {
				state = dogState.moveToToilet;
			}
			else if (hunger <= 50) {
				state = dogState.moveToBowl;
			}
			else if (bathroom >= bathroomLimit) {
				state = dogState.poop;
			}
			else if (point_distance(x, y, oPlayer.x, oPlayer.y) <= 200) {
				state = dogState.moveToPlayer;
			}
			else {
				rx = random_range(24, room_width  - 24);
				ry = random_range(24, room_height - 24);
				state = dogState.moveToRandom;
			}
		break;
	#endregion
	
	#region // move to random
		case dogState.moveToRandom:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, rx, ry));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, rx, ry));
			
			// at random position
			if (x >= rx - 5 && x < rx + 5 && y >= ry - 5 && ry < ry + 5) {
				rx = random_range(24, room_width  - 24);
				ry = random_range(24, room_height - 24);
				state = dogState.idle;
			}
			
			// hit door
			var col = collision_circle(x, y, 12, oDoor, false, true);
			if (col != noone) {
				if (!col.open) {
					state = dogState.knockingOnDoor;
				}
			}
			
			// Check Stats
			if (thirst <= 50) {
				state = dogState.moveToToilet;
			}
			else if (hunger <= 50) {
				state = dogState.moveToBowl;
			}
			else if (bathroom >= bathroomLimit) {
				state = dogState.poop;
			}
			else if (point_distance(x, y, oPlayer.x, oPlayer.y) <= 200) {
				state = dogState.moveToPlayer;
			}
		break;
	#endregion
	
	#region // move to door
		case dogState.moveToDoor:
			var door = instance_nearest(x, y, oDoor);
			if (door != noone) {
				if (!door.open) {
					var col = collision_circle(x, y, 12, oDoor, false, true);
					if (col == noone) {
						hspd = lengthdir_x(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
						vspd = lengthdir_y(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
					}
					else {
						state = dogState.knockingOnDoor;	
					}
				}
				else {
					if (x >= door.x - 18 && x <= door.x + 18 && y >= door.y - 18 && y <= door.y + 18) {
						state = dogState.moveToCenter;	
					}
					else {
						hspd = lengthdir_x(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
						vspd = lengthdir_y(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
					}	
				}
			}
		break;
	#endregion
	
	#region // move to player
		case dogState.moveToPlayer:
			var col = collision_circle(x, y, 12, oPlayer, false, true);
			if (col == noone) {
				hspd = lengthdir_x(movementSpeed, point_direction(x, y, oPlayer.x, oPlayer.y));
				vspd = lengthdir_y(movementSpeed, point_direction(x, y, oPlayer.x, oPlayer.y));
			}
			else {
				state = dogState.idle;	
			}
			
			// stop following after certain distance
			if (point_distance(x, y, oPlayer.x, oPlayer.y) > 200) {
				state = dogState.idle;	
			}
		break;
	#endregion
	
	#region // move to bowl
		case dogState.moveToBowl:
			var col = collision_circle(x, y, 12, oBowl, false, true);
			if (col == noone) {
				var b = instance_nearest(x, y, oBowl);
				if (b != noone) {
					hspd = lengthdir_x(movementSpeed, point_direction(x, y, b.x, b.y));
					vspd = lengthdir_y(movementSpeed, point_direction(x, y, b.x, b.y));
				}
			}
			else {
				var b = instance_nearest(x, y, oBowl);
				if (b != noone) {
					if (b.capacity > 0) {
						b.dog = id;
						state = dogState.eat;	
					}
					else {
						state = dogState.idle;
					}
				}
			}
		break;
	#endregion
	
	#region // move to toilet
		case dogState.moveToToilet:
			var col = collision_circle(x, y, 12, oToilet, false, true);
			if (col == noone) {
				var b = instance_nearest(x, y, oToilet);
				if (b != noone) {
					hspd = lengthdir_x(movementSpeed, point_direction(x, y, b.x, b.y));
					vspd = lengthdir_y(movementSpeed, point_direction(x, y, b.x, b.y));
				}
			}
			else {
				var b = instance_nearest(x, y, oToilet);
				if (b != noone) {
					if (b.open) {
						state = dogState.drink;	
					}
					else {
						state = dogState.idle;	
					}
				}
			}
		break;
	#endregion
	
	#region // move to center
		case dogState.moveToCenter:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, room_width / 2, room_height / 2));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, room_width / 2, room_height / 2));
			
			if (InsideRoom(x - hspd, y - vspd, false, true)) {
				state = dogState.moveToPlayer;	
			}
			
			// Reached Center
			if (x >= room_width / 2 - 12 && x <= room_width / 2 + 12 && y >= room_height / 2 - 12 && y <= room_height / 2 + 12) {
				if (!InsideRoom(x, y, false, true)) {
					state = dogState.moveToRandom;	
				}
				else {
					state = dogState.idle;	
				}
			}
		break;
	#endregion
	
	#region // move to left quad
		case dogState.moveToLeftQuad:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, room_width / 4, room_height / 2));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, room_width / 4, room_height / 2));
			
			if (InsideRoom(x - hspd, y - vspd, false, true)) {
				state = dogState.moveToPlayer;	
			}
			
			// Reached Center
			if (x >= room_width / 4 - 12 && x <= room_width / 4 + 12 && y >= room_height / 2 - 12 && y <= room_height / 2 + 12) {
				if (!InsideRoom(x, y, false, true)) {
					state = dogState.moveToRandom;	
				}
				else {
					state = dogState.idle;	
				}
			}
		break;
	#endregion
	
	#region // move to top quad
		case dogState.moveToTopQuad:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, room_width / 2, room_height / 4));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, room_width / 2, room_height / 4));
			
			if (InsideRoom(x - hspd, y - vspd, false, true)) {
				state = dogState.moveToPlayer;	
			}
			
			// Reached Center
			if (x >= room_width / 2 - 12 && x <= room_width / 2 + 12 && y >= room_height / 4 - 12 && y <= room_height / 4 + 12) {
				if (!InsideRoom(x, y, false, true)) {
					state = dogState.moveToRandom;	
				}
				else {
					state = dogState.idle;	
				}
			}
		break;
	#endregion
	
	#region // move to right quad
		case dogState.moveToRightQuad:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, room_width / 2 + room_width / 4, room_height / 2));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, room_width / 2 + room_width / 4, room_height / 2));
			
			if (InsideRoom(x - hspd, y - vspd, false, true)) {
				state = dogState.moveToPlayer;	
			}
			
			// Reached Center
			if (x >= room_width / 2 + room_width / 4 - 12 && x <= room_width / 2 + room_width / 4 + 12 && y >= room_height / 2 - 12 && y <= room_height / 2 + 12) {
				if (!InsideRoom(x, y, false, true)) {
					state = dogState.moveToRandom;	
				}
				else {
					state = dogState.idle;	
				}
			}
		break;
	#endregion
	
	#region // move to bottom quad
		case dogState.moveToBottomQuad:
			hspd = lengthdir_x(movementSpeed, point_direction(x, y, room_width / 2, room_height / 2 + room_height / 4));
			vspd = lengthdir_y(movementSpeed, point_direction(x, y, room_width / 2, room_height / 2 + room_height / 4));
			
			if (InsideRoom(x - hspd, y - vspd, false, true)) {
				state = dogState.moveToPlayer;	
			}
			
			// Reached Center
			if (x >= room_width / 2 - 12 && x <= room_width / 2 + 12 && y >= room_height / 2 + room_height / 4 - 12 && y <= room_height / 2 + room_height / 4 + 12) {
				if (!InsideRoom(x, y, false, true)) {
					state = dogState.moveToRandom;	
				}
				else {
					state = dogState.idle;	
				}
			}
		break;
	#endregion
	
	#region // move into door
		case dogState.moveIntoDoor:
			var door = instance_nearest(x, y, oDoor);
			if (door != noone) {
				if (x >= door.x - 18 && x <= door.x + 18 && y >= door.y - 18 && y <= door.y + 18) {
					state = dogState.moveToCenter;	
				}
				else {
					hspd = lengthdir_x(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
					vspd = lengthdir_y(movementSpeed, point_direction(x, y, door.x + 12, door.y + 12));
				}
			}
		break;
	#endregion
	
	#region // knocking on door
		case dogState.knockingOnDoor:
			hspd = 0;
			vspd = 0;

			var col = collision_circle(x, y, 24, oDoor, false, true);
			if (col != noone) {
				if (!col.open) {
					col.life--;
				}
				else {
					state = dogState.moveIntoDoor;	
				}
			}
		break;
	#endregion
	
	#region // poop
		case dogState.poop:
			
		break;
	#endregion
	
	#region // eat
		case dogState.eat:
			
		break;
	#endregion
	
	#region // drink
		case dogState.drink:
			// randomly close lid
		break;
	#endregion
	
	#region // carried
		case dogState.carried:
			
		break;
	#endregion
	
	#region // do nothing
		case dogState.doNothing:
			hspd = 0;
			vspd = 0;
		break;
	#endregion
	
	#region // dead
		case dogState.dead:
			instance_create_layer(x, y, "World", oDeadDog);
			instance_destroy();
		break;
	#endregion
}

#region // Interact w/Player
if (keyboard_check_pressed(ord("L"))) {
	var play = collision_circle(x, y, 24, oPlayer, false, true);
	if (play != noone) {
		if (!play.carryDog) {
			carried = !carried;
		}
	}
}

if (carried) {
	phy_active			= false;
	phy_position_x		= oPlayer.x;
	phy_position_y		= oPlayer.y;
	phy_speed_x			= 0;
	phy_speed_y			= 0;
	x					= phy_position_x;
	y					= phy_position_y;
	depth				= oPlayer.depth - 1;
	oPlayer.carryDog	= true;
	state				= dogState.carried;
	
	if (oPlayer.numberOfBowls > 0) {
		DropAllBowls();	
	}
}
else {
	phy_active		= true;	
}
#endregion

#region // Hunger & Thirst Depletion/Refill
	if (hunger > 0) {
		hunger -= 0.1;	
	}
	if (thirst > 0) {
		thirst -= 0.1;	
	}
	if (bathroom < bathroomLimit) {
		if (hunger >= 50 && thirst >= 50) {
			bathroom += 0.05;	
		}
	}
	
	if (hunger <= 0 && thirst <= 0) {
		state = dogState.dead;	
	}
#endregion

phy_fixed_rotation	= true;
phy_rotation		= 0;
x					= phy_position_x;
y					= phy_position_y;
xprevious			= phy_position_xprevious;
yprevious			= phy_position_yprevious;

Collisions(oSolid);