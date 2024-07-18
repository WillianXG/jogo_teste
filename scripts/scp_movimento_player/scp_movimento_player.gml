// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function state_player_free(){
	
		//Movimentação
	var _direita = keyboard_check(ord("D"));
    var _esquerda = keyboard_check(ord("A"));
    var _jump = keyboard_check_pressed(ord("W"));

    velh = (_direita - _esquerda) * spd;
	

	//Tilemap colisão
	var _tile = layer_tilemap_get_id("terreno");
	
	//Colisão com o chão
	var _chao = place_meeting(x, y + 1, _tile);
	
	//Pulo e Gravidade
	if (!_chao)
	{
		//efeito da gravidade
		velv += grav;
		sprite_index = spr_player_jump
	}	
	else
	{
		//efito pulo
		velv = 0;
		sprite_index = spr_player_idle
		//Pulo
		if (_jump)
		{
			velv = -velv_max;
			sprite_index = spr_player_jump
		}
	}
	
	//Movimento Horizontal
	if _esquerda
	{
		sprite_index = spr_player_run
		move_and_collide(velh, 0, _tile);
		image_xscale = -1
	}
	else
	if _direita{
		sprite_index = spr_player_run
		move_and_collide(velh, 0, _tile);
		image_xscale = 1
	}
	
	
	//Movimento Vertical
	move_and_collide(0, velv, _tile, 20)
	
	//Botao de attack
	if mouse_check_button_pressed(mb_left)
{
    if(mouse_x < x) image_xscale = -1; else image_xscale = 1
    image_index = 0;
    state = state_player_atk
}
    




}