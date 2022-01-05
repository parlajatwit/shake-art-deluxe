if (live_call()) return live_result;

draw_line_width_color(42, 688, 299, 688, 18, make_color_hsv(obj_draw_handler.hue, 0, obj_draw_handler.val), make_color_hsv(obj_draw_handler.hue, 255, obj_draw_handler.val));
draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);