if (live_call()) return live_result;
if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	if (hovered && !selected) {
		draw_sprite_ext(spr_linetool, -1, x, y, 1, 1, 0, obj_draw_handler.color_inverse, 1);
	}
	else if (selected) {
		draw_sprite_ext(spr_linetool, -1, x, y, 1, 1, 0, c_dkgray, 1);
		offset = abs(sin(timer/15)*4);
		draw_sprite_ext(spr_linetool, -1, x - offset, y - offset, 1, 1, 0, obj_draw_handler.color_limited, 1);
	}
	else {
		draw_sprite_ext(spr_linetool, -1, x, y, 1, 1, 0, obj_draw_handler.color_limited, 1);
	}

	if (hovered) {
		draw_set_color(c_black);
		tool_name = "Line";
		tool_desc = "Draws a line. Left Click to add points to the line.";
		tool_desc2 = "Right Click or swap to a different tool to finish the line.";
		draw_set_color(c_olive);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc2), mouse_y + 75, false);
		draw_set_color(c_black);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc2), mouse_y + 75, true);
		draw_set_font(munro);
		draw_text(mouse_x + 15, mouse_y + 2, tool_name);
		draw_text(mouse_x + 16, mouse_y + 2, tool_name);
		draw_text(mouse_x + 15, mouse_y + 24, tool_desc);
		draw_text(mouse_x + 15, mouse_y + 46, tool_desc2);
	}
	
	surface_reset_target();
} else {
	guiSurface = surface_create(342, 768);
}
