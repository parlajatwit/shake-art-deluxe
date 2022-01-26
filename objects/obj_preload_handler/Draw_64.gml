if (live_call()) return live_result;

draw_set_font(munro);
draw_set_color(c_orange);
draw_set_halign(fa_center);
draw_text_ext_transformed(1366/2, 768/2-200, "click to start!!", 1, 500, 3, 3, sin(spin_timer/45)*10);
draw_text_ext_transformed(1366/2, 768/2, "made with <3 by nokoi", 1, 500, 3, 3, -sin(spin_timer/45)*10);
