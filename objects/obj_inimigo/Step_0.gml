 if(life <=0) instance_destroy(); 
        
	//Movimentação
	var _direita = dir
    var _esquerda = dir
   
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