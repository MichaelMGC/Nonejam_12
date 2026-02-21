// CONTROLANDO HERO ///////////
var _left, _right, _jump;
	_left	= keyboard_check(inputs.left);
	_right	= keyboard_check(inputs.right);
	_jump	= keyboard_check_pressed(inputs.Jump);
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
/* se tiver jetpack posso voar
if (jet>0) {
	if (_jump){
	velv = -veljet;
	jet-=1;
	}
}
*/
// se tiver pisando no bloco posso pular
if (_bloco){
	grav = 0;
	if (_jump){
	velv = -jump;
	//if (jet>0){
	//	velv -= 1;
	//}
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

// o player esta no ar //////////
/* else {
	grav=0.3
	var _slimelitle = instance_place(x,y+1,obj_slimelitle)
	// ao pular no inimigo mata o inimigo e da impulso para outro pulo
	if (_slimelitle){
		// meu dano sempre sera falso se eu estiver matando o inimigo
		dano = false;
		
		if (_slimelitle.dano == false){
		velv = -jump;
		_slimelitle.dano = true;
		}
	}

	// tenho que estar no ar para poder usar jetpack
	if (velv < 0) {
		if (jet>0){
			sprite_index = spr_hero_jetup;
		}else {
			sprite_index = spr_hero_jump;
		}
	
  } else if (velv>=0 ){
  sprite_index = spr_hero_jetfall;
} 
}
// tempo que fico sem me mexer e tempo que fico invencivel
if (dano){
	timer_dano = tempo;
	timer_inv = tempo;
	velh=0;
	sprite_index = spr_hero_hit;
	dano = false;
}
if (timer_dano>0){
	timer_dano-=4000;
	sprite_index = spr_hero_hit;
}
if (timer_inv>0){
	timer_inv-=1500;

}

var _inimigo = instance_place(x,y,obj_slimelitle);
// ao tocar no inimigo se eu não estiver invencivel..
if (_inimigo && timer_inv<=0){
	// se o inimigo não tiver tomando dano e meu dano ja tiver acabado
	if (_inimigo.dano == false && timer_dano <=0){
		
		dano = true;
	}
}
