if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self)) {
	hovered = true;
	if (mouse_check_button_pressed(mb_left)) {
		if (obj_draw_handler.undoindex < array_length(obj_draw_handler.undoredo)) {
			obj_draw_handler.redo();
			timer = 25;
		}
	}
}
else {
	hovered = false;
}

timer--;
if (timer > 0) {
	selected = true;
}
if (timer < 0) {
	selected = false;
	timer = 0;
}

if (hovered) {
	depth = -5;
}
else {
	depth = -1;
}