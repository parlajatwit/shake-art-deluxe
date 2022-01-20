if (live_call()) return live_result;

draw_set_color(make_color_hsv(255 - hue, 255 - sat, 255 - val));
draw_rectangle(43, 352, 298, 412, false);
for (i = 0; i < array_length(settings_line.x_draw)-1; i++) {
	draw_line_width_color(settings_line.x_draw[i], settings_line.y_draw[i], settings_line.x_draw[i+1], settings_line.y_draw[i+1], line_thickness, color, color);
	draw_circle_color(settings_line.x_draw[i], settings_line.y_draw[i], line_thickness/2, color, color, false);
	draw_circle_color(settings_line.x_draw[i+1], settings_line.y_draw[i+1], line_thickness/2, color, color, false);
}
draw_set_color(c_gray);
draw_rectangle(0, 0, 342, 352, false);
draw_rectangle(0, 352, 43, 412, false);
draw_rectangle(298, 352, 342, 412, false);
draw_rectangle(0, 412, 342, 768, false);


