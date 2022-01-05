if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self) && mouse_check_button_pressed(mb_left))
	held = true
if (mouse_check_button_released(mb_left))
	held = false;
if (held) {
	x = clamp(mouse_x, 43, 298);
	val = clamp(x - 43, 0, 255);
}