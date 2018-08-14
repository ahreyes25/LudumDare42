/// @description Poop
var p = instance_create_layer(x, y, "Game", oPoop);
p.scale = scale;
bathroom -= 25;
audio_play_sound(sfPoop, 0, 0);
state = dogState.idle;