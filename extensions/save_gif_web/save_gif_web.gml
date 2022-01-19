#define init_gifencoder
/// @description (width, height):
/// @param  width
/// @param  height
var _width = argument0, var _height = argument1;

init_gifencoder_js(_width, _height);
show_debug_message("gif encoder init success");

#define add_frame
/// @description (buffer, gif_surface, surface, x, y, width, height):
/// @param buffer
/// @param gif_surface
/// @param surface
/// @param x
/// @param y
/// @param width
/// @param height
var _buffer = argument0;
show_debug_message("buffer set successfully: " + string(_buffer));
var _gif_surface = argument1;
show_debug_message("gif surface set successfully: " + string(_gif_surface));
var _surface = argument2;
show_debug_message("surface set successfully: " + string(_surface));
var _x = argument3;
show_debug_message("x set successfully: " + string(_x));
var _y = argument4;
show_debug_message("y set successfully: " + string(_y));
var _width = argument5;
show_debug_message("width set successfully: " + string(_width));
var _height = argument6;
show_debug_message("height set successfully: " + string(_height));

show_debug_message("attempting to copy surface to gif surface");
surface_copy_part(_gif_surface, 0, 0, _surface, _x, _y, _width, _height);
show_debug_message("surface copied");
buffer_get_surface(_buffer, _gif_surface, 0);
show_debug_message("surface copied to buffer");
add_frame_js(_buffer, _width, _height, 0, 0);
show_debug_message("frame added");

#define save_gif_web
/// @description ()
save_gif_web_js();
