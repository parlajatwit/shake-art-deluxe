if (live_call()) return live_result;


offset = checker_timer;
for (j = 0; j < 12; j++) {
	for (i = j%2; i < 12; i+=2) {
		draw_set_color(red);
		draw_rectangle(i*128-128+offset,j*128-128-offset,i*128+offset,j*128-offset, false);	
	}
	for (i = (j+1)%2; i < 12; i+=2) {
		draw_set_color(blue);
		draw_rectangle(i*128-128+offset,j*128-128-offset,i*128+offset,j*128-offset, false);	
	}
}
