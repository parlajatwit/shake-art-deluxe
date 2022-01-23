if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self)) {
	hovered = true;
	if (mouse_check_button_pressed(mb_left)) {
		selected = !selected;
		audio_set_master_gain(0, 0.5 * selected);
	}
}
else {
	hovered = false;
}

if (hovered) {
	depth = -5;
}
else {
	depth = -1;
}


timer++;
if (timer == 330) {
	timer = 0;
}