if (live_call()) return live_result;

if (hovered) {
	draw_sprite_ext(spr_freehand, -1, x, y, 1, 1, 0, c_aqua, 1);
}
else {
	draw_self();
}