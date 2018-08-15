if (keyboard_check_pressed(vk_anykey)) {
	audio_stop_sound(SadSong);
	room_goto(rmTItle);
}