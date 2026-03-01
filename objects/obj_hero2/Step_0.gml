var _pulo = keyboard_check_pressed(vk_space);
var _dash = keyboard_check_pressed(vk_down)
var _colid = place_meeting(x,y,obj_inimigo)
// game juicy
image_xscale = lerp(image_xscale,ix,0.1);
image_yscale = lerp(image_yscale,iy,0.1);
// colisão	
if (!death){
	if (_dash and global.poder){
		obj_controle.image_speed=1.5;
		instance_create_layer(x,y,"Instances",obj_dash)
		instance_destroy();
		global.poder=false;
		audio_play_sound(snd_dash,1,0)
	}
	if (_colid){
		sprite_index=spr_death;
		image_angle+=5;
		image_speed=2.5;
		death=true;
		audio_play_sound(snd_failed,0,0);
		alarm[0]=70;
		// função que para a velocidade horizontal de tudo 
		// criada no script
	}
		// abaixo de exit deixa de funcionar
		if (_pulo){
			// game juicy
			image_xscale = ix-0.3;
			image_yscale = iy+0.3;
			image_speed=2;
			vspeed = pulo;	
			audio_play_sound(snd_voar,1,0)
		}
		
		

	// criando fisica de angulo para gravidade e pulo
		if (vspeed>3){
			image_angle-=2;
		}else if (vspeed<-3){
			image_angle+=2;
		}else{
			image_angle =0;
		}
	// não permitir deslocamento para fora da room
	if (y<-96 or y > 340){
		audio_play_sound(snd_failed,0,0);
		sprite_index=spr_death;
		image_angle+=5;
		alarm[0]=40;
		death=true;
		if (infinito){
		show_message("Sua Pontuação foi :"+ string (obj_controle.tempo))
		}
	}
}else {
	if (image_index>=5){
		room_restart();
		audio_stop_sound(snd_musica)
		if (infinito){
		show_message("Sua Pontuação foi :"+ string (obj_controle.tempo))
		}
	}
}
if (x>500){
	x-=3;
}else if (x>400){
	x-=2;
}else if (x>300){
	x--;
}else if (x>64){
	x-=0.1
} else if (x<64){
	x++;
}

	
