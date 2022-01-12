if (live_call()) return live_result;

draw_line_width_color(42, 727, 299, 727, 18, make_color_hsv(obj_draw_handler.hue, obj_draw_handler.sat, 0), make_color_hsv(obj_draw_handler.hue, obj_draw_handler.sat, 255));
draw_set_color(c_black);
draw_rectangle(43, 720, 298, 735, true);
draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);