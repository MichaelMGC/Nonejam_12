var _pulo = keyboard_check_pressed(vk_space);
var _colid = place_meeting(x,y,obj_pilar)
// game juicy
image_xscale = lerp(image_xscale,ix,0.1);
image_yscale = lerp(image_yscale,iy,0.1);
// colisão	
if (!death){
	if (_colid){
		sprite_index=spr_death;
		image_angle+=5;
		alarm[0]=40;
		death=true;
		// função que para a velocidade horizontal de tudo 
		// criada no script
	}
		// abaixo de exit deixa de funcionar
		if (_pulo){
			// game juicy
			image_xscale = ix-0.3;
			image_yscale = iy+0.3;
			image_index=1;
			image_speed=2;
			vspeed = pulo;	
		}

	// criando fisica de angulo para gravidade e pulo
		if (vspeed>3){
			image_angle-=2;
			if (x>30){
				hspeed-=0.05;
			}
		}else if (vspeed<-3){
			image_angle+=2;
			if (x<320){
				hspeed+=0.14;
			}
		}else{
			image_angle =0;
			hspeed=0;
		}
	// não permitir deslocamento para fora da room
	if (y<-96 or y > 330){
		sprite_index=spr_death;
		image_angle+=5;
		alarm[0]=40;
		death=true;
	}
}