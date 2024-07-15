//Movimentação
var _direita = keyboard_check(ord("D"))
var _esquerda = keyboard_check(ord("A"))
var _jump = keyboard_check_pressed(ord("W"))

velh = (_direita - _esquerda) * spd
  
velv+=grav
velv=clamp(velv,velv_min,velv_max)

//Colisão
if place_meeting(x,y+velv,obj_chao)
{
	while !place_meeting(x,y+sign(velv),obj_chao)
	y = y + sign(velv)
	velv= 0
}

if place_meeting(x+velh,y,obj_chao)
{
	while !place_meeting(x+velh,y,obj_chao)
	x = x + sign(velh)
	velh= 0
}

repeat(abs(velh))
{

//Animações da movimentação
if !place_meeting(x+sign(velh),y,obj_chao)
{
	if (_direita)
	{
		x+=sign(velh)
		sprite_index = spr_player_run
		image_speed = 0.4
		image_xscale = +1

	}
	else if (_esquerda)
	{
		x+=sign(velh)
		sprite_index = spr_player_run
		image_speed = 0.4
		image_xscale = -1
	}
	
	
}
else
{
	velh = 0
	sprite_index = spr_player_idle
	break
}


}

if (velh == 0)
{
    sprite_index = spr_player_idle;
}


x+=velh
y+=velv


//Pulo

var ground = place_meeting(x,y+1,obj_chao)

if (ground)
{
	coyote_time= coyote_time_max
}
else
{
	coyote_time--
}

if (_jump and coyote_time> 0)
{
	coyote_time= 0
	velv= 0
	velv-= jump
}