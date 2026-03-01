if (image_index<5){
	image_index+=1;
	alarm[0]=180;
	audio_play_sound(snd_beep2,1,0)
}
if (image_index==5){
	room_goto_next()
}