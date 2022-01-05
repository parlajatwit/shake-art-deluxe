if (live_call()) return live_result;

draw_sprite_stretched(spr_val, -1, 43, 720, 256, 16);
draw_rectangle(43, 720, 298, 735, true);
draw_sprite_stretched(spr_handle, -1, x - 8, y, 16, 32);