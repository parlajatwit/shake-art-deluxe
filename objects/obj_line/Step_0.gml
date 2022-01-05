if (live_call()) return live_result;

if (timer == sh_spd) {
	for (i = 0; i < array_length(x_real); i++) {
		x_draw[i] = x_real[i] + random_range(-sh_off, sh_off);
		y_draw[i] = y_real[i] + random_range(-sh_off, sh_off);
	}
	timer = 0;
}
timer++;