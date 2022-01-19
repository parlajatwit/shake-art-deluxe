if (live_call()) return live_result;

recording = false;
hovered = false;

timer = 0;

frame_count = 0;
max_frames = 10;

gif_image = 0;
stored_frames = []; // ONLY FOR HTML5