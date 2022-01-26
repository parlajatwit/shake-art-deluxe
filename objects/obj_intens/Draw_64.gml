if (live_call()) return live_result;

if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	draw_line_width_color(42, 520, 299, 520, 18, c_white, c_white);
	draw_set_color(c_black);
	draw_rectangle(43, 512, 298, 530, true);
	draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);
	
	if (hovered && !held) {
		draw_set_color(c_black);
		tool_name = "Intensity";
		tool_desc = "Changes the intensity of the line to be drawn.";
		draw_set_color(c_olive);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc), mouse_y + 50, false);
		draw_set_color(c_black);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc), mouse_y + 50, true);
		draw_set_font(munro);
		draw_text(mouse_x + 15, mouse_y+2, tool_name);
		draw_text(mouse_x + 16, mouse_y+2, tool_name);
		draw_text(mouse_x + 15, mouse_y + 24, tool_desc);
	}
	surface_reset_target();
} else {
	guiSurface = surface_create(342, 768);
}