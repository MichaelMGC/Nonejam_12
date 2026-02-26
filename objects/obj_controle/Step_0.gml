tempo+=0.2;
// choose (sorteia apenas os numeros citados)
tpp =choose(100,250,350)
tpc =choose(150,200,300)
//random range (sorteia de um numero para outro)
tpe =random_range(300,400)
tpu =random_range(100,200)

yp  =random_range(64,290)
yc =random_range(64,220)
ye =random_range(140,280)
yu =random_range(64,290)
var _objetivo = levels[level]
var _hero = obj_hero2;
if (global.poder){
	image_index=0;
}
	

if (pilar ){
	alarm[0]=tpp;
	pilar=false;
}

if (coluna){
	alarm[1]=tpc;
	coluna=false;
}

if (eyes){
	alarm[2]=tpe;
	eyes =false;
}
if (up){
	alarm[3]=tpu;
	up=false;
}
show_debug_message(tempo)
if (tempo>100){
	room_goto_next()
}

