if (live_call()) return live_result;

curindex = 0;
current_line = noone;

shake_offset = 2;
shake_speed = 1;
line_thickness = 3;

timer = 0;

hue = 255;
sat = 0;
val = 255;

selected = false;

color = make_color_hsv(hue, sat, val);

settings_line = instance_create_depth(0, 0, 2, obj_line);
settings_line.x_real = [43, 170, 298];
settings_line.y_real = [470, 470, 470];

undoredo = [];
undoindex = 0;


state_draw_line = function() {
	if (mouse_wheel_up())
		shake_offset++;
	if (mouse_wheel_down())
		shake_offset--;
	
	if (mouse_check_button_pressed(mb_left)) {
		if (current_line == noone) {
			create_line();
		}
		else {
			curindex++;
		}
	}
	if (current_line != noone) {
		current_line.x_real[curindex] = mouse_x;
		current_line.y_real[curindex] = mouse_y;
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
		current_line = noone;
		curindex = 0;
	}
	
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}

freehand_delay = 3;

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
		current_line.x_real[curindex] = mouse_x;
		current_line.y_real[curindex] = mouse_y;
		if (timer < 0) {
			curindex++;
			timer = freehand_delay;
		}
	}
	if (mouse_check_button_released(mb_left)) {
		timer = freehand_delay;	
		current_line = noone;
		selected = false;
	}

	
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}

function create_line() {
	curindex = 1;
	current_line = instance_create_depth(mouse_x, mouse_y, 2, obj_line);
	undoredo[undoindex] = current_line;
	undoindex++;
	current_line.col = color;
	current_line.sh_spd = shake_speed;
	current_line.sh_off = shake_offset;
	current_line.line_width = line_thickness;
	current_line.x_real[0] = mouse_x;
	current_line.y_real[0] = mouse_y;
}

function undo() {
	if (instance_exists(undoredo[undoindex-1])) {
		instance_deactivate_object(undoredo[undoindex-1]);
	}
	else {
		instance_activate_object(undoredo[undoindex-1]);
	}
	undoindex--
	//undoredo[undoindex-1].enabled = !undoredo[undoindex-1].enabled;
	//undoindex--;
}

function redo() {
	if (instance_exists(undoredo[undoindex])) {
		instance_deactivate_object(undoredo[undoindex]);
	}
	else {
		instance_activate_object(undoredo[undoindex]);
	}
	undoindex++;
	//undoredo[undoindex].enabled = !undoredo[undoindex].enabled;
	//undoindex++;
}

state = state_draw_line;