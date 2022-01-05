if (live_call()) return live_result;

if (mouse_x > 342)
	state();

hue = obj_hue.val;
sat = obj_sat.val;
val = obj_val.val;
line_thickness = obj_width.val;
color = make_color_hsv(hue, sat, val);

shake_offset = clamp(shake_offset, 0, 100);
shake_speed = clamp(shake_speed, 1, 30);

settings_line.sh_off = shake_offset;
settings_line.sh_spd = shake_speed;
settings_line.line_width = line_thickness;
settings_line.col = color;