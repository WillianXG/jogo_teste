// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_player_atk(){
	
	if(image_index > 0){
	if(!instance_exists(obj_hitbox)){
		instance_create_layer(x + (35 * image_xscale),y,layer,obj_hitbox)
		}
	}
	
	sprite_index = spr_player_atk
	if (image_index >= image_number - 1){
		if(instance_exists(obj_hitbox)) instance_destroy(obj_hitbox);
		state = state_player_free
	}
}