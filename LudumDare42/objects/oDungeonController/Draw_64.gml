//draw_text_transformed(0, 0, "FPS: " + string(fps), 1, 1, 0);
draw_text_transformed(10, 10, "Points: " + string(points), 1, 1, 0);
draw_text_transformed(10, 30, "Dogs: " + string(oDungeonController.numberOfDogs), 1, 1, 0);

if (oDungeonController.numberOfDeadDogs > 0) {
	draw_text_transformed(10, 70, "Dead Dogs... " + string(oDungeonController.numberOfDeadDogs), 1, 1, 0);
}

draw_text_transformed(10, 50, "Next Dog in: " + string(oDungeonController.alarm[1]), 1, 1, 0);