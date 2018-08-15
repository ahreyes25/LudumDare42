var col = make_color_rgb(246, 214, 189);

draw_text_transformed_color(145, room_height / 2 - 60,	"Points: "		+ string(global.points), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(145, room_height / 2 - 45,	"Largest Dog: "	+ string(global.largestDog), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(145, room_height / 2 - 30,	"Dead Dogs: "	+ string(global.deadDogs), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(145, room_height / 2 - 15,	"RIP Good Boys: "	+ string(global.goodBoys), 0.75, 0.75, 0, col, col, col, col, 1);
draw_text_transformed_color(145, room_height / 2 + 0,	"ABUSE: "	+ string(global.abuse), 0.75, 0.75, 0, col, col, col, col, 1);