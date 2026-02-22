tempo+=0.2;
angulo++;
// choose (sorteia apenas os numeros citados)
tpp =choose(100,250,350)
tpc =choose(150,200,300)
//random range (sorteia de um numero para outro)
tpe =random_range(300,800)
tpm =random_range(350,900)
tpg =random_range(600,1800)
tpoff =choose(60,300,400)
yp  =random_range(64,290)
yc =random_range(120,190)
var _objetivo = levels[level]

if (tempo>=999){
	tempo = 1000;
}
if (pilar ){
	alarm[0]=tpp;
	pilar=false;
}
/*
if (coluna){
	alarm[6]=tpo
	obstaculo=false;
}
if (eyes){
	alarm[4]=tpd;
	dna =false;
}
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
if (level>2){
	tpc = tpc +34
	layer_hspeed("bg_terreno",-(level*0.5)-2)
	layer_hspeed("bg_arvores",-(level*0.5)-2)
	layer_hspeed("bg_nuvem",-(level*0.07))
	layer_hspeed("bg_nuvem2",-(level*0.05))
	layer_hspeed("bg_sol",-(level*0.01))
	layer_hspeed("bg_ceu",-(level*0.03))
}
if (level>3){
	if (coruja_pai){
		alarm[5]=tpc;
		coruja_pai=false;
		
	}
}
if (level>4){
	tpt = -10;
	tpo = tpo+34
	tpm = tpm-20;
	tpc = tpc-30;
	if (aguia){
		alarm[1]=tpa;
		aguia =false;
	}
}