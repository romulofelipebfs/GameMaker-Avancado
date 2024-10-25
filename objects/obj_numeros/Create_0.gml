/// @description Insert description here
// You can write your code in this editor

tempo = 5;

timer = 0;

segundos = 0;
minutos = 0;
horas = 0;
dias = 0;

vel = 5;

velx = 0;
vely = 0;
max_velx = 2;
max_vely = 2;
acel = .1;

satura = 0;
tempo = 0;

#region funções

exibe_tempo_jogo = function(){
	draw_set_halign(1);
	draw_set_valign(1);
	
	segundos %= 60;
	minutos %=60;
	draw_text(60, 20, round(segundos));
	
	draw_text(40, 20, floor(minutos));
	
	draw_text(20, 20, floor(horas));
	
	draw_set_halign(-1);
	draw_set_valign(-1);
}


exibe_texto = function(){
	draw_set_valign(1);
	draw_set_halign(1);
	var _fracao = frac(tempo);
	
	draw_set_alpha(_fracao)
	draw_text_transformed(room_width/2, room_height/2, tempo, _fracao * 3, _fracao * 3, 0);
	draw_set_alpha(1)
	draw_set_valign(-1);
	draw_set_halign(-1);
}
	


mover_click = function(){
	if(mouse_check_button(mb_left)){
		/*
		x = lerp(x, mouse_x, .1);
		y = lerp(y, mouse_y, .1);
		*/
		/*
		var _tiro = instance_create_layer(mouse_x, mouse_y, layer, obj_tiro);
		_tiro.speed = 3;
		_tiro.direction = 90
		*/
		
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		
		var _velx = lengthdir_x(vel, _dir);
		var _vely = lengthdir_y(vel, _dir);
		
		x += _velx;
		y += _vely;
		
	}
}

#endregion