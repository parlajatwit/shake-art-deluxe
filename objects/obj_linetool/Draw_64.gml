if (live_call()) return live_result;

if (hovered || selected) {
	draw_sprite_ext(spr_linetool, -1, x, y, 1, 1, 0, c_aqua, 1);
}
else {
	draw_self();
}