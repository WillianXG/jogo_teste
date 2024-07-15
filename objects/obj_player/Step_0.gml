var direita = keyboard_check(ord("D"))
var esquerda = keyboard_check(ord("A"))
var jump = keyboard_check(ord("W"))

velh = (direita - esquerda) * spd
  

repeat(abs(velh))
{

if !place_meeting(x+sign(velh),y,obj_chao)
{
	if (direita)
	{
		x+=sign(velh)
		sprite_index = spr_player_run
		image_speed = 0.1
		image_xscale = +1

	}
	else if (esquerda)
	{
		x+=sign(velh)
		sprite_index = spr_player_run
		image_speed = 0.1
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