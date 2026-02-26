tempo+=0.2;
// choose (sorteia apenas os numeros citados)
tpp =choose(100,250,350)
tpc =choose(150,200,300)
//random range (sorteia de um numero para outro)
tpe =random_range(300,400)
tpu =random_range(100,200)
tpg =random_range(600,1800)
tpoff =choose(60,300,400)
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


/*
// velocidade da layer acompanha o level

if (tempo>=_objetivo){
	level++;
}

if (level>0){
	tpp = tpp -20
	if (meet){
	alarm[2]=tpm;
	meet=false;
	}
	
}
if (level>1){
	tpp = tpp -10
	if (giant){
	alarm[3]=tpg;
	giant=false;
	}
}
