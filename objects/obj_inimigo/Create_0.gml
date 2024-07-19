sprite_index = spr_inimigo_idle
image_xscale= -1;
life= 10
spd = 5;
velh = 0;
velv = 0;
grav= 0.2;
distance = 300

state = Enemy_State.IDLE;

enum Enemy_State
{
IDLE,
CHASE,
ATTACK
}