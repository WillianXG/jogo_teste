function EnemyStateChase() {
    velv += grav;

    // Calcular a direção para seguir o jogador
    var vir = sign(obj_player.x - x);
    velh = vir * 2;

    // Troca o lado do sprite com base na direção
    if (velh != 0) image_xscale = sign(velh);

    // Movimento com colisão
    var new_velocities = move(velh, velv);
    velh = new_velocities[0];
    velv = new_velocities[1];
	
	if distance_to_object(obj_player) > 30
	{
		state =  EnemyState.IDLE
	}
	if distance_to_object(obj_player) < 10{
		state =  EnemyState.ATTACK
	}
	
}