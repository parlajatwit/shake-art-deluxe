if (live_call()) return live_result;

if (selected) {
	offset = abs(sin(timer/15));
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, offset * 360, obj_draw_handler.color_limited, 1);
}
else if (obj_draw_handler.undoindex == array_length(obj_draw_handler.undoredo) && !selected) {
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_limited, 0.6);	
}
else if (hovered && !selected && obj_draw_handler.undoindex < array_length(obj_draw_handler.undoredo)) {
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_inverse_limited, 1);
}
else {
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_limited, 1);
}


//undoindex < array_length(undoredo)