#define screen_save_dialog
/// @description  (filename):
/// @param filename
var _fname = argument0;
if (os_browser != browser_not_a_browser) {
	screen_save_dialog_js(_fname, window_handle());
} else {
	var _path = get_save_filename("PNG image|*.png", _fname);
	if (_path != "") screen_save(_path);
}

#define screen_save_part_dialog
/// @description  (filename, x, y, w, h):
/// @param filename
/// @param  x
/// @param  y
/// @param  w
/// @param  h
var _fname = argument0;
if (os_browser != browser_not_a_browser) {
	screen_save_part_dialog_js(_fname, argument1, argument2, argument3, argument4, window_handle());
} else {
	var _path = get_save_filename("PNG image|*.png", _fname);
	if (_path != "") screen_save_part(_path, argument1, argument2, argument3, argument4);
}

#define surface_save_dialog
/// @description  (surface, filename):
/// @param surface
/// @param  filename
var _surf = argument0, _fname = argument1;
if (os_browser != browser_not_a_browser) {
	var _width = surface_get_width(_surf);
	var _height = surface_get_height(_surf);
	var _buffer = buffer_create(_width * _height * 4, buffer_fixed, 1);
	buffer_get_surface(_buffer, _surf, 0);
	surface_save_dialog_js(_fname, buffer_get_address(_buffer), _width, _height);
} else {
	var _path = get_save_filename("PNG image|*.png", _fname);
	if (_path != "") surface_save(_surf, _path);
}

#define surface_save_part_dialog
/// @description  (surface, filename, x, y, width, height):
/// @param surface
/// @param  filename
/// @param  x
/// @param  y
/// @param  width
/// @param  height
var _surf = argument0, _fname = argument1, _x = argument2, _y = argument3, _width = argument4, _height = argument5;
if (os_browser != browser_not_a_browser) {
	var _swidth = surface_get_width(_surf);
	var _sheight = surface_get_height(_surf);
	var _buffer = buffer_create(_swidth * _sheight * 4, buffer_fixed, 1);
	buffer_get_surface(_buffer, _surf, 0);
	surface_save_part_dialog_js(_fname, buffer_get_address(_buffer), _swidth, _sheight, _x, _y, _width, _height);
} else {
	var _path = get_save_filename("PNG image|*.png", _fname);
	if (_path != "") surface_save_part(_surf, _path, _x, _y, _width, _height);
}

#define save_gif_array
/// @description (array, filename, x, y, width, height):
/// @param array
/// @param  filename
/// @param  x
/// @param  y
/// @param  width
/// @param  height
var _array = argument0, _fname = argument1, _x = argument2, _y = argument3, _width = argument4, _height = argument5;

save_gif_array_js(_fname, _array, _width, _height, _x, _y, _width, _height);






