if (live_call()) return live_result;

if (hovered && !selected) {
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color_inverse, 1);
}
else if (selected) {
	offset = abs(sin(timer/15));
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, offset * 360, obj_draw_handler.color, 1);
}
else {
	draw_sprite_ext(spr_undo, -1, x, y, -1, 1, 0, obj_draw_handler.color, 1);
}
