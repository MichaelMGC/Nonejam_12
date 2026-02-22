image_index+=1;
alarm[0]=180;
if (image_index==5){
	instance_create_layer(x+250,y,"Instances",obj_hero);
	instance_destroy();
}