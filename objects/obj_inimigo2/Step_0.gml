if (life <= 0) instance_destroy();

switch (state) {
    case EnemyState.IDLE:
        EnemyStateIdle();
        break;
    case EnemyState.CHASE:
        EnemyStateChase();
        break;
    case EnemyState.ATTACK:
        EnemyStateAttack(); 
        break;
}

if  state = EnemyState.ATTACK
{
	velh=0
	sprite_index = spr_golen_atk
}
if state = EnemyState.IDLE{
	velh = 0
	sprite_index = spr_golen_idle
}