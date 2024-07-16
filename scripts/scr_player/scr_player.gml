// Função de movimentação do jogador
function player_state_free() {
    var _direita = keyboard_check(ord("D"));
    var _esquerda = keyboard_check(ord("A"));
    var _jump = keyboard_check_pressed(ord("W"));

    velh = (_direita - _esquerda) * spd;

    velv += grav;
    velv = clamp(velv, velv_min, velv_max);

    // Colisão vertical
    if (place_meeting(x, y + velv, obj_chao)) {
        while (!place_meeting(x, y + sign(velv), obj_chao)) {
            y += sign(velv);
        }
        velv = 0;
    }

    // Colisão horizontal
    if (place_meeting(x + velh, y, obj_chao)) {
        while (!place_meeting(x + velh, y, obj_chao)) {
            x += sign(velh);
        }
        velh = 0;
    }

    // Movimentação horizontal e animações
    if (velh != 0) {
        repeat (abs(velh)) {
            if (!place_meeting(x + sign(velh), y, obj_chao)) {
                x += sign(velh);
                sprite_index = spr_player_run;
                image_speed = 0.4;
                image_xscale = (_direita - _esquerda); // Ajusta a direção do sprite
            } else {
                velh = 0;
                break;
            }
        }
    } else {
        sprite_index = spr_player_idle;
    }

    x += velh;
    y += velv;

    // Pulo
    var ground = place_meeting(x, y + 1, obj_chao);

    if (ground) {
        coyote_time = coyote_time_max;
    } else {
        coyote_time--;
        sprite_index = spr_player_jump;
        image_speed = 1;
    }

    if (_jump && coyote_time > 0) {
        coyote_time = 0;
        velv = 0;
        velv -= jump;
        sprite_index = spr_player_jump;
        image_speed = 1;
    }
}

 // Função de ataque do jogador
function player_state_atk() {
	
	if(image_index > 0){
		if(!instance_exists(obj_hitbox))
		{
			instance_create_layer(x + (35 * image_xscale),y,layer,obj_hitbox)
		}
	}
    sprite_index = spr_player_atk; 
    if(image_index >= image_number -1)
	{
		if(instance_exists(obj_hitbox)) instance_destroy(obj_hitbox)
		state = player_state_free;
	}
}