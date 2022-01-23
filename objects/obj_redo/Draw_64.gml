if (live_call()) return live_result;
if (surface_exists(guiSurface)) {
	surface_set_target(guiSurface);

	if (selected) {
		offset = abs(sin(timer/15));
		draw_sprite_ext(spr_undo, -1, x, y, -1, 1, offset * 360, obj_draw_handler.color_limited, 1);
	}
	else if (!obj_draw_handler.undoindex < array_length(obj_draw_handler.undoredo) && !selected) {
		draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_limited, 0.6);	
	}
	else if (hovered && !selected && obj_draw_handler.undoindex < array_length(obj_draw_handler.undoredo)) {
		draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_inverse_limited, 1);
		draw_set_color(c_black);
		tool_name = "Redo";
		tool_desc = "Redoes.";
		draw_set_color(c_olive);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc), mouse_y + 50, false);
		draw_set_color(c_black);
		draw_rectangle(mouse_x + 10, mouse_y, mouse_x + 18 + string_width(tool_desc), mouse_y + 50, true);
		draw_set_font(munro);
		draw_text(mouse_x + 15, mouse_y + 2, tool_name);
		draw_text(mouse_x + 16, mouse_y + 2, tool_name);
		draw_text(mouse_x + 15, mouse_y + 24, tool_desc);
	}
	else {
		draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_limited, 1);
	}

	surface_reset_target();
	//undoindex < array_length(undoredo)
} else {
	guiSurface = surface_create(342, 768);
}