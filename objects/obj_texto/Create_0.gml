/// @description Insert description here
// You can write your code in this editor

alinha_texto = function(_x, _y){
	draw_set_halign(_x);
	draw_set_valign(_y);
}




desenha_titulo_animado = function(_texto){
	
	draw_set_font(fnt_titulo);
	
	alinha_texto(1, 1);
	
	var _temp = 2 * get_timer() / 1000000;
	
	var _x1, _y1, _ang, _cor, _alpha;
	_x1 = room_width / 2 + (20* sin(3 *_temp));
	_y1 = 100 + (10* sin(3 *_temp));
	_ang = 0 + (10 * sin(2 *_temp));
	_cor = c_fuchsia;
	_alpha = 1;
	
	draw_text_transformed_color(_x1, _y1, _texto, 1, 1, _ang, _cor, _cor, _cor, _cor, _alpha);
	
	_x1 = room_width / 2 + (15* sin(3 *_temp));
	_y1 = 100 + (5* sin(3 *_temp));
	_ang = 0 + (10 * sin(2 *_temp));
	_cor = c_yellow;
	_alpha = 1;
	
	draw_text_transformed_color(_x1, _y1, _texto, 1, 1, _ang, _cor, _cor, _cor, _cor, _alpha);
	
	alinha_texto(-1, -1);
	
	
	draw_set_font(-1);
}