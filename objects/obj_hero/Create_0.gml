// VARIAVEIS DO HERO //////////
velh	= 0;
velv	= 0;
vel		= 2;
grav	= .3;
jump	= 5;
jet		= 10;
veljet	= 8;
dano = false;
tempo = get_timer();
//timer_dano = 0;
timer_inv = 0;
image_speed=0;


// INPUTS DE CONTROLE //////////
inputs	= {
		left	: vk_left,
		right	: vk_right, 
		Jump	: vk_space
}