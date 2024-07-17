// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_player_atk(){
	sprite_index = spr_player_atk
	if (image_index >= image_number - 1){
		state = state_player_free
	}
}