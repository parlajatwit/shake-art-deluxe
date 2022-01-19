if (live_call()) return live_result;

if (position_meeting(mouse_x, mouse_y, self)) {
	hovered = true;
	if (mouse_check_button_pressed(mb_left)) {
		obj_draw_handler.state = obj_draw_handler.state_draw_freehand;
		timer = 0;
		if (os_browser != browser_not_a_browser) {
			//init_gifencoder(1024, 768);
			//array_delete(stored_frames, 0, frame_count);
		}
		recording = !recording;
	}
}
else {
	hovered = false;
}
if (recording) {
	// WINDOWS
	if (os_browser == browser_not_a_browser) {
		if (frame_count == 0) {
			gif_image = gif_open(1024, 768);
			show_debug_message("gif_open() worked");
		}
		gif_surf = surface_create(1024, 768);
		surface_copy_part(gif_surf, 0, 0, application_surface, 342, 0, 1024, 768);
		gif_add_surface(gif_image, gif_surf, 2);
		//show_debug_message("frame: " + string(frame_count) + "  gif_add_surface() worked");
		frame_count++;
	}
	
	// HTML5
	if (os_browser != browser_not_a_browser) {
		if (frame_count < max_frames + 1) {
			add_frame(buffer, gif_surf, application_surface, 324, 0, 1024, 768);
			
			//buffer_delete(buffer);
			//show_debug_message(stored_frames[frame_count]);
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
			save_gif_web_js();
			frame_count = 0;
			//buffer_delete(buffer);
		}
	}
}




timer++;
if (timer == 330) {
	timer = 0;
}