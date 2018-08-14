if (value > 0) {
	draw_text_transformed(x, y, "+" + string(value), 0.5, 0.5, 0);
}
else {
	draw_text_transformed(x, y, value, 0.5, 0.5, 0);
}