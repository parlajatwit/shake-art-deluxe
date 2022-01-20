if (live_call()) return live_result;

if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	draw_sprite_stretched(spr_hue, -1, 43, 640, 256, 16);
	draw_set_color(c_black);
	draw_rectangle(43, 656, 298, 640, true);
	draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);
	
	surface_reset_target();
} else {
	guiSurface = surface_create(342, 768);
}