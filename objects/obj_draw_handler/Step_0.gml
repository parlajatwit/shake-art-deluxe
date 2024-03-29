if (live_call()) return live_result;

if (mouse_x > 342)
	state();

if (audio_system_is_available() && !music_playing) {	
	audio_play_sound(chill2, 1000, 1);
	audio_set_master_gain(0, 0.4);
	music_playing = true;
}

hue = obj_hue.val;
sat = obj_sat.val;
val = obj_val.val;
line_thickness = obj_width.val;
color = make_color_hsv(hue, sat, val);
color_limited = make_color_hsv(hue, sat, clamp(val, 100, 255));
color_inverse = make_color_rgb(255 - color_get_red(color), 255 - color_get_green(color), 255 - color_get_blue(color));
color_inverse_limited = make_color_hsv(color_get_hue(color_inverse), color_get_saturation(color_inverse), clamp(color_get_value(color_inverse), 50, 255));

shake_offset = obj_intens.val;
shake_speed = obj_speed.val;
total_intensity = obj_total_intens.val;

settings_line.sh_off = shake_offset;
settings_line.sh_spd = shake_speed;
settings_line.line_width = line_thickness;
settings_line.col = color;

if (keyboard_check(vk_control) && keyboard_check_pressed(ord("Z"))) {
	if (keyboard_check(vk_shift) && undoindex < array_length(undoredo))
		redo();
	else if (undoindex > 0 && !keyboard_check(vk_shift))
		undo();
}
if (keyboard_check(vk_control) && keyboard_check_pressed(ord("Y")) && undoindex < array_length(undoredo)) {
	redo();
}

if (keyboard_check(ord("R"))) {
	audio_stop_all();
	room_restart();
}

// beyond mad that i have to add this
if (drawing_line && state != state_draw_line) {
	array_resize(current_line.x_real, array_length(current_line.x_real) - 1);
	array_resize(current_line.y_real, array_length(current_line.y_real) - 1);
	array_resize(current_line.x_draw, array_length(current_line.x_draw) - 1);
	array_resize(current_line.y_draw, array_length(current_line.y_draw) - 1);
	if (array_length(current_line.x_real) == 1) {
		instance_destroy(current_line);
		array_resize(undoredo, array_length(undoredo) - 1);
		undoindex--;
	}
	if (current_line != noone) {
		current_line.being_drawn = false;
		current_line.making_col = true;
		current_line = noone;
		curindex = 0;
	}
	drawing_line = false;
}