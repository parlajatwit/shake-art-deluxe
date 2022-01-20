if (live_call()) return live_result;
if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	draw_line_width_color(42, 688, 299, 688, 18, make_color_hsv(obj_draw_handler.hue, 0, obj_draw_handler.val), make_color_hsv(obj_draw_handler.hue, 255, obj_draw_handler.val));
	draw_set_color(c_black);
	draw_rectangle(43, 680, 298, 696, true);
	draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);
	
	surface_reset_target();
} else {
	guiSurface = surface_create(342, 768);
}
