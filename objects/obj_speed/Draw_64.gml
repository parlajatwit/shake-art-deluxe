if (live_call()) return live_result;

draw_line_width_color(42, 564, 299, 564, 18, c_white, c_white);
draw_rectangle(43, 556, 298, 572, true);
draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);

