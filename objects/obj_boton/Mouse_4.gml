// criando transição de faze 
layer_sequence_create("Titulo",0,0,sq_transisao)

	if (image_index==0){
		layer_sequence_create("Titulo",0,0,sq_transisao)
		alarm[0]=59;
	}else if (image_index==1){
		layer_sequence_create("Titulo",0,0,sq_transisao)
		alarm[1]=59;
	}else if(image_index==2){
		layer_sequence_create("Titulo",0,0,sq_transisao)
		alarm[2] = 59;
	}else if(image_index==3){
		layer_sequence_create("Titulo",0,0,sq_transisao)
		alarm[3]= 59;
	}