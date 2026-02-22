// VARIAVEIS DO HERO //////////
velh	= 0;
velv	= 0;
vel		= 2;
grav	= .3;
jump	= 5;
dano = false;
carrega = false;
tempo = get_timer();
image_speed=0;


// INPUTS DE CONTROLE //////////
inputs	= {
		left	: vk_left,
		right	: vk_right, 
		Jump	: vk_space,
		down    : vk_down
}