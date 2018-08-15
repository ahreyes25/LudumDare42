var amount = argument0;
oDungeonController.points += amount;

audio_play_sound(sfPoints, -3, 0);

var p = instance_create_layer(x + random_range(-10, 10), y - 6, "UI", oPoints);
p.value = amount;