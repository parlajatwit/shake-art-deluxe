if (live_call()) return live_result;

if (point_in_rectangle(mouse_x, mouse_y, 43, 636, 298, 660) && mouse_check_button_pressed(mb_left))
	held = true
if (mouse_check_button_released(mb_left))
	held = false;
if (held) {
	x = clamp(mouse_x, 43, 298);
	val = clamp(x - 43, 0, 255);
}
