var dogs = CollisionCircleList(x, y, 72, oDog, false, true);
if (dogs != noone) {
	for (var i = 0; i < ds_list_size(dogs); i++) {
		var tDog = ds_list_find_value(dogs, i);
	
	
		var dis = point_distance(oPlayer.x, oPlayer.y, tDog.x, tDog.y);
		var ang = point_direction(oPlayer.x, oPlayer.y, tDog.x, tDog.y);
	
		var normalizer = 40;
		var xforce = (1 / lengthdir_x(dis, ang)) * normalizer;
		var yforce = (1 / lengthdir_y(dis, ang)) * normalizer;
	
		with (tDog) {
			physics_apply_impulse(tDog.x, tDog.y, xforce, yforce);
		}
		oDungeonController.abuse++;
		tDog.bathroom += 10;
		tDog.sad = true;
	}
	audio_play_sound(sfSad, 0, 0);
}

oPlayer.hspd = 0;
oPlayer.vspd = 0;

ShakeScreen(8, 10);
ScreenFlash(0.8);
audio_play_sound(sfWhistle, 0, 0);