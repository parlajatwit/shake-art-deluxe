if (live_call()) return live_result;

if (hovered && !selected) {
	draw_sprite_ext(spr_freehand, -1, x, y, 1, 1, 0, obj_draw_handler.color_inverse, 1);
}
else if (selected) {
	draw_sprite_ext(spr_freehand, -1, x, y, 1, 1, 0, c_dkgray, 1);
	offset = abs(sin(timer/15)*4);
	draw_sprite_ext(spr_freehand, -1, x - offset, y - offset, 1, 1, 0, obj_draw_handler.color, 1);
}
else {
	draw_sprite_ext(spr_freehand, -1, x, y, 1, 1, 0, obj_draw_handler.color, 1);
}
