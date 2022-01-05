if (live_call()) return live_result;

draw_set_color(c_gray);
draw_rectangle(0, 0, 342, 768, false);
draw_set_color(make_color_hsv(255 - hue, 255 - sat, 255 - val));
draw_rectangle(43, 560, 298, 620, false);

if (array_length(settings_line.x_real) > 1) {
	for (i = 0; i < array_length(settings_line.x_draw)-1; i++) {
		draw_line_width_color(settings_line.x_draw[i], settings_line.y_draw[i], settings_line.x_draw[i+1], settings_line.y_draw[i+1], line_thickness, color, color);
	}
}