if (live_call()) return live_result;

recording = false;
hovered = false;

timer = 0;

frame_count = 0;
max_frames = 60;

gif_image = 0;
stored_frames = []; // ONLY FOR HTML5

buffer = buffer_create(1024 * 768 * 4, buffer_fast, 1);

gif_surf = surface_create(1024, 768);

init_gifencoder(1024, 768);