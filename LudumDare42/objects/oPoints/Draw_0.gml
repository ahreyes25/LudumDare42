if (value > 0) {
	draw_text_transformed_color(x, y, "+" + string(value), 0.5, 0.5, 0, c_white, c_white, c_white, c_white, a);
}
else {
	draw_text_transformed_color(x, y, value, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, a);
}