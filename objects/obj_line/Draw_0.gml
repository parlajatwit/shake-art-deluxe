if (live_call()) return live_result;

if (array_length(x_real) > 1) {
	for (i = 0; i < array_length(x_draw)-1; i++) {
		draw_line_width_color(x_draw[i], y_draw[i], x_draw[i+1], y_draw[i+1], line_width, col, col);
	}
}

