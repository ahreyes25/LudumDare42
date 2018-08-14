/// @description Dog Bark
audio_sound_pitch(sfBark, 1 / scale);
audio_play_sound(sfBark, 0, 0);

alarm[2] = random_range(0, 300);