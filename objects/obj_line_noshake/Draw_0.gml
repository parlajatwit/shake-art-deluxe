if (live_call()) return live_result;

if (array_length(x_real) > 1 && !selected) {
	for (i = 0; i < array_length(x_real)-1; i++) {
		draw_line_width_color(x_real[i], y_real[i], x_real[i+1], y_real[i+1], line_width, col, col);
		draw_circle_color(x_real[i], y_real[i], line_width/2, col, col, false);
		draw_circle_color(x_real[i+1], y_real[i+1], line_width/2, col, col, false);
	}
}
else if (array_length(x_real) > 1 && selected) {
	//inverse_col = make_color_rgb(255 - color_get_red(col), 255 - color_get_green(col), 255 - color_get_blue(col));
	inverse_col = make_color_hsv(color_get_hue(col), clamp(120 - color_get_saturation(col), 50, 255), color_get_value(col));
	for (i = 0; i < array_length(x_real)-1; i++) {
		draw_line_width_color(x_real[i], y_real[i], x_real[i+1], y_real[i+1], line_width, inverse_col, inverse_col);
		draw_circle_color(x_real[i], y_real[i], line_width/2, inverse_col, inverse_col, false);
		draw_circle_color(x_real[i+1], y_real[i+1], line_width/2, inverse_col, inverse_col, false);
	}
}
