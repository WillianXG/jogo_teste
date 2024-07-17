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
	}	
	else
	{
		//efito pulo
		velv = 0;
		
		//Pulo
		if (_jump)
		{
			velv = -velv_max;
		}
	}
	
	//Movimento Horizontal
	move_and_collide(velh, 0, _tile);
	
	//Movimento Vertical
	move_and_collide(0, velv, _tile, 12);
	

    


