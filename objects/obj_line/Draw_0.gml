if (live_call()) return live_result;

if (surface_exists(pixelSurface)) {
	surface_set_target(pixelSurface);
	if (array_length(x_real) > 1 && !selected) {
		for (i = 0; i < array_length(x_draw)-1; i++) {
			draw_line_width_color(x_draw[i], y_draw[i], x_draw[i+1], y_draw[i+1], line_width, col, col);
			draw_circle_color(x_draw[i], y_draw[i], line_width/2, col, col, false);
			draw_circle_color(x_draw[i+1], y_draw[i+1], line_width/2, col, col, false);
		}
	}
	else if (array_length(x_real) > 1 && selected) {
		inverse_col_lim = make_color_hsv(color_get_hue(inverse_col), color_get_saturation(inverse_col), clamp(color_get_value(inverse_col), 25, 240));
		for (i = 0; i < array_length(x_draw)-1; i++) {
			draw_line_width_color(x_draw[i], y_draw[i], x_draw[i+1], y_draw[i+1], line_width, inverse_col_lim, inverse_col_lim);
			draw_circle_color(x_draw[i], y_draw[i], line_width/2, inverse_col_lim, inverse_col_lim, false);
			draw_circle_color(x_draw[i+1], y_draw[i+1], line_width/2, inverse_col_lim, inverse_col_lim, false);
		}
	} 
	surface_reset_target();
} else {
	pixelSurface = surface_create(640, 480);
}