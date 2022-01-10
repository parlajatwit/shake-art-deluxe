if (live_call()) return live_result;

if (timer == 0) {
	for (i = 0; i < array_length(x_real); i++) {
		x_draw[i] = x_real[i] + random_range(-sh_off, sh_off);
		y_draw[i] = y_real[i] + random_range(-sh_off, sh_off);
	}
	timer = sh_spd;
}
timer--;

if (making_col) {
	for (i = 0; i < array_length(x_real)-1; i++) {
		collision_objs[i] = instance_create_depth(x_real[i], y_real[i], depth+1, obj_linecol);
		collision_objs[i].image_angle = point_direction(x_real[i], y_real[i], x_real[i+1], y_real[i+1]);
		collision_objs[i].image_xscale = point_distance(x_real[i], y_real[i], x_real[i+1], y_real[i+1]);
		collision_objs[i].image_yscale = (line_width/2) * 1.3; 
	}
	making_col = false;
}

can_hover = (obj_draw_handler.state == obj_draw_handler.state_eraser || obj_draw_handler.state == obj_draw_handler.state_fill || obj_draw_handler.state == obj_draw_handler.state_eyedropper);

for (i = 0; i < array_length(collision_objs); i++) {
	if (can_hover && collision_point(mouse_x, mouse_y, collision_objs[i], true, true) && !selected && !obj_draw_handler.mouse_over_line) {
		obj_draw_handler.mouse_line = self;
		obj_draw_handler.mouse_over_line = true;
		selected = true;
	}
}

if (selected) {
	still_selected = false;
	for (i = 0; i < array_length(collision_objs); i++) {
		if (can_hover && collision_point(mouse_x, mouse_y, collision_objs[i], true, true)) {
			still_selected = true;
		}
	}
	if (!still_selected) {
		selected = false;
		obj_draw_handler.mouse_line = noone;
		obj_draw_handler.mouse_over_line = false;
	}
}