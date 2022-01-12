if (live_call()) return live_result;

x_real = [];
y_real = [];

line_width = 0;

col = make_color_hsv(0, 255, 255);
inverse_col = make_color_hsv(255, 0, 0);

selected = false;
making_col = false;
can_hover = false;

collision_objs = [];



