var _colh	= instance_place(x+velh, y, obj_bloco);
if (_colh) {
	// DIREITA
	if (velh>0){
		x = _colh.bbox_left + (x-bbox_right);
	}
	// ESQUERDA
	if (velh<0){
		x = _colh.bbox_right + (x-bbox_left);
	}
	velh = 0;
}
var _colv	= instance_place(x, y + velv, obj_bloco);
if (_colv) {
	// PARA BAIXO
	if (velv>0){
		y = _colv.bbox_top + (y - bbox_bottom);
	}
	// PARA CIMA
	if (velv<0){
		y = _colv.bbox_bottom + (y - bbox_top);
	}
	velv = 0;
}
x +=velh;
y +=velv