var col = make_color_rgb(246, 214, 189);
for (var i = 0; i < array_length_1d(names); i++) {
	draw_text_color(x, y + (15 * i), names[i], col, col, col, col, 1);
}