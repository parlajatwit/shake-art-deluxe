if (live_call()) return live_result;

if (mouse_x > 342)
	state();

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
