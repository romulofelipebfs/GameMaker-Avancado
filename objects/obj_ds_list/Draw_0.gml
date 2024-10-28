/// @description Insert description here
// You can write your code in this editor

draw_self()

for(var i = 0; i < ds_list_size(meses); i++){
	
	var _mes = meses[| i];
	
	var _cor = c_white;
	
	if(indice == i){ 
		_cor = c_red;
	}
	
	
	draw_set_color(_cor);
	
	draw_text(20, 20 + 20 *i, _mes);
	
	draw_set_color(-1);
	
	
}