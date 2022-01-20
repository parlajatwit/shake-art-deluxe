if (live_call()) return live_result;

if (timer == 0) {
	for (i = 0; i < array_length(x_real); i++) {
		x_draw[i] = clamp(x_real[i] + random_range(-sh_off, sh_off), -sh_off + x_real[i], 320);
		y_draw[i] = y_real[i] + random_range(-sh_off, sh_off);
	}
	timer = sh_spd;
}
timer--;
