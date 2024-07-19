sprite_index = spr_golen_idle;
image_xscale = 1;

life = 10;
spd = 5;
velh = 0;
velv = 0;
grav = 0.2;
distance = 300;

state = EnemyState.IDLE;

enum EnemyState {
    IDLE,
    CHASE,
    ATTACK
}