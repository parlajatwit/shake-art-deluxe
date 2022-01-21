if (live_call()) return live_result;

//depth = 0;

// at game start
gameWidth=1366;
gameHeight=768;
surface_resize(application_surface, gameWidth, gameHeight);
//application_surface_draw_enable(false); // i think

mouse_offset = 5/8;
mouse_offset_additive = -213.75;

globalvar guiSurface;
guiSurface = surface_create(1000, 768);
globalvar pixelSurface;
pixelSurface = surface_create(640, 480);

curindex = 0;
current_line = noone;

shake_offset = 2;
total_intensity = 1;
shake_speed = 1;
line_thickness = 3;

timer = 0;

hue = 255;
sat = 0;
val = 255;

bg_color = c_white;

total_points = 0;

selected = false;

color = make_color_hsv(hue, sat, val);
color_limited = make_color_hsv(hue, sat, 255);
color_inverse = make_color_rgb(255 - color_get_red(color), 255 - color_get_green(color), 255 - color_get_blue(color));
color_inverse_limited = make_color_hsv(color_get_hue(color_inverse), color_get_saturation(color_inverse), 255);

settings_line = instance_create_depth(0, 0, 2, obj_settingsline);
settings_line.x_real = [43, 170, 298];
settings_line.y_real = [382, 382, 382];


undoredo = [];
undoindex = 0;

mouse_over_line = false;
mouse_line = noone;


state_draw_line = function() {
	/*if (mouse_wheel_up())
		shake_offset++;
	if (mouse_wheel_down())
		shake_offset--;*/
	
	if (mouse_check_button_pressed(mb_left)) {
		if (current_line == noone) {
			create_line();
		}
		else {
			curindex++;
		}
	}
	if (current_line != noone) {
		current_line.x_real[curindex] = mouse_x*mouse_offset+mouse_offset_additive;
		current_line.y_real[curindex] = mouse_y*mouse_offset;
	}
	if (mouse_check_button_pressed(mb_right) && current_line != noone) {
		array_resize(current_line.x_real, array_length(current_line.x_real) - 1);
		array_resize(current_line.y_real, array_length(current_line.y_real) - 1);
		array_resize(current_line.x_draw, array_length(current_line.x_draw) - 1);
		array_resize(current_line.y_draw, array_length(current_line.y_draw) - 1);
		if (array_length(current_line.x_real) == 1) {
			instance_destroy(current_line);
			array_resize(undoredo, array_length(undoredo) - 1);
			undoindex--;
		}
		current_line.being_drawn = false;
		current_line.making_col = true;
		current_line = noone;
		curindex = 0;
	}
	
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}

freehand_delay = 2;

state_draw_freehand = function() {
	timer--;
	
	if (mouse_wheel_up())
		shake_offset++;
	if (mouse_wheel_down())
		shake_offset--;
		
		
	if (mouse_check_button_pressed(mb_left)) {
		create_line();
		selected = true;
	}
	if (mouse_check_button(mb_left) && selected) {
		current_line.x_real[curindex] = mouse_x*mouse_offset+mouse_offset_additive;
		current_line.y_real[curindex] = mouse_y*mouse_offset;
		if (timer < 0) {
			curindex++;
			timer = freehand_delay;
		}
	}
	if (mouse_check_button_released(mb_left) && selected) {
		timer = freehand_delay;
		current_line.making_col = true;
		current_line.being_drawn = false;
		current_line = noone;
		selected = false;
	}

	
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}

state_eraser = function() {
	if (mouse_over_line && mouse_check_button_pressed(mb_left)) {
		for (i = 0; i < array_length(mouse_line.collision_objs); i++) {
			instance_destroy(mouse_line.collision_objs[i]);
		}
		array_resize(mouse_line.collision_objs, 0);
		undoindex--;
		undoredo[undoindex] = mouse_line;
		instance_deactivate_object(mouse_line);
		mouse_line = noone;
		mouse_over_line = false;
		undoindex++;
	}
		
}

state_fill = function() {
	filled_line = false;
	if (mouse_over_line && mouse_check_button_pressed(mb_left)) {
		for (i = 0; i < array_length(mouse_line.collision_objs); i++) {
			instance_destroy(mouse_line.collision_objs[i]);
		}
		array_resize(mouse_line.collision_objs, 0);

		create_line();
		for (i = 0; i < array_length(mouse_line.x_real); i++) {
			current_line.x_real[i] = mouse_line.x_real[i];
			current_line.y_real[i] = mouse_line.y_real[i];
		}
		current_line.making_col = true;
		instance_deactivate_object(mouse_line);
		mouse_over_line = false;
		current_line.being_drawn = false;
		current_line = noone;
		mouse_line = noone;
		filled_line = true;
	}
	
	if (!mouse_over_line && mouse_check_button_pressed(mb_left) && !filled_line) {
		bg_color = color;
		//layer_background_blend(0, color);
	}
}

state_eyedropper = function() {
	if (mouse_over_line && mouse_check_button_pressed(mb_left)) {
		obj_hue.val = color_get_hue(mouse_line.col);
		obj_sat.val = color_get_saturation(mouse_line.col);
		obj_val.val = color_get_value(mouse_line.col);
		shake_offset = mouse_line.sh_off;
		obj_speed.val = mouse_line.sh_spd;
		obj_width.val = mouse_line.line_width;
	}
}

state_linebehind = function() {
	timer--;
	
	if (mouse_check_button_pressed(mb_left)) {
		create_line_noshake();
		selected = true;
	}
	if (mouse_check_button(mb_left) && selected) {
		current_line.x_real[curindex] = mouse_x*mouse_offset+mouse_offset_additive;
		current_line.y_real[curindex] = mouse_y*mouse_offset;
		if (timer < 0) {
			curindex++;
			timer = freehand_delay;
		}
	}
	if (mouse_check_button_released(mb_left) && selected) {
		timer = freehand_delay;
		current_line.making_col = true;
		current_line.being_drawn = false;
		current_line = noone;
		selected = false;
	}
}

function create_line() {
	curindex = 1;
	current_line = instance_create_depth(mouse_x*mouse_offset+mouse_offset_additive, mouse_y*mouse_offset, 2, obj_line);
	current_line.depth = -undoindex;
	undoredo[undoindex] = current_line;
	undoindex++;
	if (undoindex < array_length(undoredo)) {
		for (i = undoindex; i < array_length(undoredo); i++)
			instance_destroy(undoredo[i]);
		array_resize(undoredo, undoindex);
	}
	current_line.col = color;
	current_line.inverse_col = color_inverse;
	current_line.sh_spd = shake_speed;
	current_line.sh_off = shake_offset;
	current_line.line_width = line_thickness;
	current_line.x_real[0] = mouse_x*mouse_offset+mouse_offset_additive;
	current_line.y_real[0] = mouse_y*mouse_offset;
}

function create_line_noshake() {
	curindex = 1;
	current_line = instance_create_depth(mouse_x*mouse_offset+mouse_offset_additive, mouse_y*mouse_offset, 2, obj_line_noshake);
	current_line.depth = undoindex;
	undoredo[undoindex] = current_line;
	undoindex++;
	if (undoindex < array_length(undoredo)) {
		for (i = undoindex; i < array_length(undoredo); i++)
			instance_destroy(undoredo[i]);
		array_resize(undoredo, undoindex);
	}
	current_line.col = color;
	current_line.inverse_col = color_inverse;
	current_line.line_width = line_thickness;
	current_line.x_real[0] = mouse_x*mouse_offset+mouse_offset_additive;
	current_line.y_real[0] = mouse_y*mouse_offset;
}

function undo() {
	if (instance_exists(undoredo[undoindex-1])) {
		for (i = 0; i < array_length(undoredo[undoindex-1].collision_objs); i++) {
			instance_destroy(undoredo[undoindex-1].collision_objs[i]);
		}
		array_resize(undoredo[undoindex-1].collision_objs, 0);
		instance_deactivate_object(undoredo[undoindex-1]);
	}
	else {
		instance_activate_object(undoredo[undoindex-1]);
		undoredo[undoindex-1].making_col = true;
	}
	undoindex--
}

function redo() {
	if (instance_exists(undoredo[undoindex])) {
		for (i = 0; i < array_length(undoredo[undoindex].collision_objs); i++) {
			instance_destroy(undoredo[undoindex].collision_objs[i]);
		}
		array_resize(undoredo[undoindex].collision_objs, 0);
		instance_deactivate_object(undoredo[undoindex]);
	}
	else {
		instance_activate_object(undoredo[undoindex]);
		undoredo[undoindex].making_col = true;
	}
	undoindex++;
}

state = state_draw_freehand;