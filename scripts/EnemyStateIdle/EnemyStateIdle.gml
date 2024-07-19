function EnemyStateIdle() {
    // Implementar a lógica para o estado IDLE
    // Exemplo de lógica: verificar a distância para o jogador e mudar o estado para CHASE se necessário
    if (point_distance(x, y, obj_player.x, obj_player.y) < distance) {
        state = EnemyState.CHASE;
    }
}