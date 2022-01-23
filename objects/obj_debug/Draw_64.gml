if (live_call()) return live_result;

draw_set_color(c_green);
draw_text(100, 100, "mouse actual pos: x: " + string(mouse_x) + " y: " + string(mouse_y));
draw_set_color(c_red);
draw_text(100, 124, "mouse fake pos: x: " + string(x) + " y: " + string(y));
if (surface_exists(pixelSurface)) {
	surface_set_target(pixelSurface);
	draw_self();
	surface_reset_target();
} else {
	pixelSurface = surface_create(640, 480);
}