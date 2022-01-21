if (live_call()) return live_result;

if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	draw_line_width_color(42, 476, 299, 476, 18, c_white, c_white);
	draw_set_color(c_black);
	draw_rectangle(43, 468, 298, 486, true);
	draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);
	
	surface_reset_target();
} else {
	guiSurface = surface_create(342, 768);
}