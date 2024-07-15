// Evento de Passo (Step Event) do objeto jogador (obj_player)

// Gerenciando os estados do jogador
if (state == player_state_free) {
    player_state_free();
}

if (mouse_check_button_pressed(mb_left)) {
	if (mouse_x < x) image_xscale = -1; else image_xscale = 1
    state = player_state_atk;
}

if (state == player_state_atk) {
    player_state_atk();
}
