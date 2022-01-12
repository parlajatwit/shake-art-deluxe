if (live_call()) return live_result;

draw_sprite_stretched(spr_hue, -1, 43, 640, 256, 16);
draw_set_color(c_black);
draw_rectangle(43, 656, 298, 640, true);
draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);

