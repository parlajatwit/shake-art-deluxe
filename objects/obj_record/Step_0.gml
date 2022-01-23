if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self)) {
	hovered = true;
	if (mouse_check_button_pressed(mb_left)) {
		obj_draw_handler.state = obj_draw_handler.state_draw_freehand;
		timer = 0;
		if (os_browser != browser_not_a_browser) {
			array_delete(stored_frames, 0, frame_count);
		}
		recording = !recording;
	}
}
else {
	hovered = false;
}
if (recording) {
	buffer = buffer_create(640 * 480 * 4, buffer_fast, 1);
	// WINDOWS
	if (os_browser == browser_not_a_browser) {
		if (frame_count == 0) {
			gif_image = gif_open(640, 480);
			show_debug_message("gif_open() worked");
		}
		gif_add_surface(gif_image, pixelSurface, 2);
		show_debug_message("frame: " + string(frame_count) + "  gif_add_surface() worked");
		frame_count++;
	}
	
	// HTML5
	if (os_browser != browser_not_a_browser) {
		
		if (frame_count < max_frames + 1) {
			buffer_get_surface(buffer, pixelSurface, 0);
			stored_frames[frame_count] = buffer_get_address(buffer);
			//buffer_delete(buffer);
			show_debug_message(stored_frames[frame_count]);
			frame_count++;
		}
	}
	
	if (frame_count == max_frames) {
		// WINDWOS
		if (os_browser == browser_not_a_browser) {	
			recording = false;
			gif_save(gif_image, "test.gif");
			frame_count = 0;
		}
	
		// HTML5
		if (os_browser != browser_not_a_browser) {
			recording = false;
			save_gif_array(stored_frames, "test.gif", 0, 0, 640, 480); // half of this doesn't matter LMAO
			frame_count = 0;
		}
		buffer_delete(buffer);
	}
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