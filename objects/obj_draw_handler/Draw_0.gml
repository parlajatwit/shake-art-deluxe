if (live_call()) return live_result;

if (surface_exists(pixelSurface)) {
	draw_surface_ext(pixelSurface, 342, 0, 1.6, 1.6, 0, c_white, 1);
	surface_copy_part(pixelSurface, 342, 0, application_surface, 0, 0, 1024, 768);
	surface_set_target(pixelSurface);
	draw_clear_alpha(c_white, 1);
	draw_set_color(bg_color);
	draw_rectangle(0, 0, 1366, 768, false);
	surface_reset_target();
} else {
	pixelSurface = surface_create(640, 480);
}