tempo+=0.2;
// choose (sorteia apenas os numeros citados)
tpp =choose(200,350,450)
tpc =choose(250,300,400)
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

if (tempo>100){
	tpp = tpp -50;
	tpc = tpc -50;
}
if (tempo>300){
	tpp = tpp -100;
	tpc = tpc -100;
	tpe = tpe -50;
}
if (tempo>500){
	tpp = tpp -150;
	tpc = tpc -150;
	tpe = tpe -50;
}
if (tempo>700){
	tpp = tpp -(tempo/4);
	tpc = tpc -(tempo/4);
	tpe = tpe -(tempo/4);
}
if (tempo>maxtempo){
	room_goto_next()
}

