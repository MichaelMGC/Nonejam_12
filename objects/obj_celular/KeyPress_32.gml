if (image_index<5){
	image_index+=1;
	audio_play_sound(snd_beep2,1,0)
	alarm[0]=180;
}
if (image_index==5){
	instance_create_layer(x+732,y,"Instances",obj_hero);
	instance_destroy();
}