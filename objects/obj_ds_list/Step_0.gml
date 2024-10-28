/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_released(vk_enter)){
	ds_list_shuffle(meses);
	
}

if(keyboard_check_released(vk_up)){
	
	indice++;
	
}

if(keyboard_check_released(vk_down)){
	indice--;
	
}

if(keyboard_check_released(vk_delete)){
	ds_list_delete(meses, indice);

}

indice = clamp(indice, 0, ds_list_size(meses)-1)