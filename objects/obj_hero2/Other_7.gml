image_speed=0;
if (sprite_index=spr_death){
	room_restart();
	show_message(obj_controle.tempo)
	audio_stop_sound(snd_musica)
}
if (sprite_index=spr_hero2_dash){
	sprite_index=spr_hero2
	hspeed=0;
	image_speed=0;
}