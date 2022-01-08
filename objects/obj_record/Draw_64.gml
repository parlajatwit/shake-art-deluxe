if (live_call()) return live_result;

if (hovered && !recording) {
	draw_sprite_ext(spr_recording, -1, x, y, 1, 1, 0, c_blue, 1);
}
else if (recording) {
	draw_sprite_ext(spr_recording, -1, x, y, 1, 1, 0, c_dkgray, 1);
	offset = abs(sin(timer/15)*4);
	draw_sprite_ext(spr_recording, -1, x - offset, y - offset, 1, 1, 0, c_white, 1);
}
else {
	draw_sprite_ext(spr_recording, -1, x, y, 1, 1, 0, c_white, 1);
}
