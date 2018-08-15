if (keyboard_check_pressed(vk_enter)) {
	audio_play_sound(sfMenuSelect, 0, 0);
	room_goto_next();
}	

if (alarm[0] == -1) {
	alarm[0] = 30;	
}