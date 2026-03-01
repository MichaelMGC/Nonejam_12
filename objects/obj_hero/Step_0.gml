
// CONTROLANDO HERO ///////////
var _left, _right, _jump ,_down;
	_left	= keyboard_check(inputs.left);
	_right	= keyboard_check(inputs.right);
	_jump	= keyboard_check_pressed(inputs.Jump);
	_down   = keyboard_check(inputs.down);
// timer dano trava os controles
//if (timer_dano <= 0){
velh = (_right - _left) * vel;
// lado da sprite é baseado na velocidade vertical
if (velh!=0){
	image_xscale = sign(velh);
}


// GRAVIDADE //////
velv+=grav;
// PULO //////
var _bloco	= place_meeting(x, y + 1, obj_bloco);
var _caixae = place_meeting (x-5,y,obj_caixa)
var _caixad = place_meeting (x+5,y,obj_caixa)
// se tiver pisando no bloco posso pular
if (_caixae or _caixad){
	if (_down){
		if (sprite_index==spr_hero){
			audio_play_sound(snd_pegar,1,0)
			sprite_index=spr_hero_caixa;
			carrega =true;
		}
	}
}
if (_bloco){
	grav = 0;
	if (_jump){
	velv = -jump;
	}
}else {
	grav=0.3
	image_index=2;
	image_speed=0;
	}
	// ANIMAÇÂO DE CORRER ///////
   if (velh!=0){
		image_speed=3;
	}else {
		image_speed=lerp(image_speed,0,0.8);
		if (image_speed==0){
			image_index=0;
		}
	}
		

	


