if (live_call()) return live_result;

if (timer == 0) {
	for (i = 0; i < array_length(x_real); i++) {
		x_draw[i] = x_real[i] + random_range(-sh_off, sh_off);
		y_draw[i] = y_real[i] + random_range(-sh_off, sh_off);
	}
	timer = sh_spd;
}
timer--;
if (being_drawn && array_length(x_real) > 1) {
	x_draw[array_length(x_real)-1] = x_real[array_length(x_real)-1];
	y_draw[array_length(y_real)-1] = y_real[array_length(y_real)-1];
}

if (making_col) {
	aabb_x1 = x_real[0];
	aabb_x2 = x_real[1];
	aabb_y1 = y_real[0];
	aabb_y2 = y_real[1];
	for (i = 0; i < array_length(x_real)-1; i++) {
		collision_objs[i] = instance_create_depth(x_real[i], y_real[i], depth+1, obj_linecol);
		collision_objs[i].image_angle = point_direction(x_real[i], y_real[i], x_real[i+1], y_real[i+1]);
		collision_objs[i].image_xscale = point_distance(x_real[i], y_real[i], x_real[i+1], y_real[i+1]);
		collision_objs[i].image_yscale = (line_width/2) * 1.3; 
		if (x_real[i+1] < aabb_x1)
			aabb_x1 = x_real[i+1];
		if (x_real[i+1] > aabb_x2)
			aabb_x2 = x_real[i+1];
		if (y_real[i+1] < aabb_y1)
			aabb_y1 = y_real[i+1];
		
		if (y_real[i+1] > aabb_y2)
			aabb_y2 = y_real[i+1];
	}
	aabb_x1 -= line_width/2;
	aabb_y1 -= line_width/2;
	aabb_x2 += line_width/2;
	aabb_y2 += line_width/2;
	obj_draw_handler.total_points += array_length(x_real);
	making_col = false;
}

can_hover = (obj_draw_handler.state == obj_draw_handler.state_eraser || obj_draw_handler.state == obj_draw_handler.state_fill || obj_draw_handler.state == obj_draw_handler.state_eyedropper);

if (!selected && can_hover) {
	if (point_in_rectangle(mouse_x*5/8-213.75, mouse_y*5/8, aabb_x1, aabb_y1, aabb_x2, aabb_y2)) {
		for (i = 0; i < array_length(collision_objs); i++) {
			if (collision_point(mouse_x*5/8-213.75, mouse_y*5/8, collision_objs[i], true, true) && !obj_draw_handler.mouse_over_line) {
				obj_draw_handler.mouse_line = self;
				obj_draw_handler.mouse_over_line = true;
				selected = true;
			}
		}
	}
}

if (selected) {
	still_selected = false;
	for (i = 0; i < array_length(collision_objs); i++) {
		if (can_hover && collision_point(mouse_x*5/8-213.75, mouse_y*5/8, collision_objs[i], true, true)) {
			still_selected = true;
		}
	}
	if (!still_selected) {
		selected = false;
		obj_draw_handler.mouse_line = noone;
		obj_draw_handler.mouse_over_line = false;
	}
}