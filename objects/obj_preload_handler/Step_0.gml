if (live_call()) return live_result;

if (mouse_check_button_pressed(mb_left)) {
	room_goto_next();
}

checker_timer+=1/2;
spin_timer++;
if (checker_timer == 128) {
	checker_timer = 0;
}