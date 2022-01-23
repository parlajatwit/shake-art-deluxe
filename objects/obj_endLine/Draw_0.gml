if (live_call()) return live_result;

if (surface_exists(pixelSurface)) {
	surface_set_target(pixelSurface);
	if (mouse_x*5/8-213.75 > x - 16 && mouse_x*5/8-213.75 < x + 16) {
		if (mouse_y*5/8 > y - 16 && mouse_y*5/8 < y + 16) {
			image_blend = c_gray;
		}
	} else {
		image_blend = c_white;
	}
	
	draw_self();
	surface_reset_target();
} else {
	pixelSurface = surface_create(640, 480);
}