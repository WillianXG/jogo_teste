// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scp_vida(_vida_max) constructor{
	
	//Vida total
	vida_max	= _vida_max;
	//Vida atual
	vida		= vida_max;
	vida_temp	= vida;
	vida_dano	= vida;
	
	static perde_vida = function(_quantidade = 3)
	{
		vida -= _quantidade;
		vida = clamp(vida, 0, vida_max);
		return vida;
	}
	
	static ganha_vida = function(_quantidade = 3)
	{
		vida += _quantidade;
		vida = clamp(vida, 0, vida_max);
		return vida;
		
	}
	//Desenho da vida
	///@function desenha_vida(x, y, largura, altura, [cor1], [cor2], [cor3]);
	static desenha_vida = function(_x, _y, _largura, _altura, _cor1 = c_green, _cor2 = c_red, _cor3 = c_white)
	{
		//Barra de vida com base da vida atual
		var _larg_vida = (vida_temp / vida_max) * _largura;
		var _larg_vidadamage =(vida_dano / vida_max) * _largura;
		var _cor = merge_color(_cor2, _cor1, vida_temp / vida_max);
		
		//Dando efeito visual
		vida_temp = lerp(vida_temp, vida, 0.1);
		vida_dano = lerp(vida_dano, vida_temp, 0.3);
		
		//Barra de fundo
		draw_rectangle_color(_x - 2, _y - 2, _x + _largura + 2, _y + _altura + 2, _cor3, _cor3, _cor3, _cor3, false);
		
		//Barra do dano sofrido
		draw_rectangle_color(_x, _y, _x + _larg_vidadamage, _y + _altura, _cor2, _cor2, _cor2, _cor2, false);
		
		//Barra da vida
		draw_rectangle_color(_x, _y, _x + _larg_vida, _y + _altura, _cor, _cor, _cor, _cor, false);
	}
}