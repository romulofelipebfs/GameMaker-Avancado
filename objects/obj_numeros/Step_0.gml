/// @description Insert description here
// You can write your code in this editor

timer++;

mover_click()



var _left, _right, _up, _down;

_right = max(keyboard_check(ord("D")), keyboard_check(vk_right));
_left = max(keyboard_check(ord("A")), keyboard_check(vk_left));

_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
_down = keyboard_check(ord("S")) or keyboard_check(vk_down)

if(_up xor _down or _left xor _right){

	var _dir = point_direction(0, 0, (_right - _left), (_down - _up));

	x += lengthdir_x(vel, _dir);
	y += lengthdir_y(vel, _dir);

}
/*
velx += (_right - _left) * acel;
vely += (_down - _up) * acel;

velx = clamp(velx, -max_velx, max_velx);
vely = clamp(vely, -max_vely, max_vely);

if(!_left && !_right){
	velx = lerp(velx , 0, acel);
	satura = lerp(satura, 0, .02);
}
if(_left || _right){
	satura = lerp(satura, 255, .02);
}
if(!_down && !_up){
	vely = lerp(vely, 0, acel);
}

x += velx;
y += vely;


/*
var _timer = (get_timer() / 1000000) * 5
x += sin(_timer) * 10
*/

	

image_blend = make_color_hsv(0, satura, 255);






// O clamp pega um valor, e garante que o valor fique nesse intervalo
x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height, room_height);



if(tempo > 0){
	tempo -= delta_time / 1000000;
}

segundos = get_timer()/10000;
minutos = segundos / 60;
horas = minutos / 60;

if(mouse_x != x){
	//image_xscale = sign(mouse_x - x);
}


