var col = make_color_rgb(246, 214, 189);

draw_text_transformed_color(150, room_height / 2 - 30,	"Points: "		+ string(global.points), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(150, room_height / 2 - 15,	"Largest Dog: "	+ string(global.largestDog), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(150, room_height / 2,		"Dead Dogs... ", 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(150, room_height / 2 + 15,	"Good Boys: " + string(global.goodBoys), 0.75, 0.75, 0, col, col, col, col, 1);