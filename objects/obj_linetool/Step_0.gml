if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self)) {
	hovered = true;
	if (mouse_check_button_pressed(mb_left)) {
		obj_draw_handler.state = obj_draw_handler.state_draw_line;
		selected = true;
	}
}
else {
	hovered = false;
}

if (obj_draw_handler.state != obj_draw_handler.state_draw_line)
	selected = false;