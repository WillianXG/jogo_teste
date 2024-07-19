function move(hspeed, vspeed) {
    // Movimentação horizontal
    if (hspeed != 0) {
        if (!place_meeting(x + hspeed, y, obj_chao)) {
            x += hspeed;
        } else {
            // Resolve colisão horizontal
            while (!place_meeting(x + sign(hspeed), y, obj_chao)) {
                x += sign(hspeed);
            }
            hspeed = 0;
        }
    }

    // Movimentação vertical
    if (vspeed != 0) {
        if (!place_meeting(x, y + vspeed, obj_chao)) {
            y += vspeed;
        } else {
            // Resolve colisão vertical
            while (!place_meeting(x, y + sign(vspeed), obj_chao)) {
                y += sign(vspeed);
            }
            vspeed = 0;
        }
    }

    // Retornar as velocidades para que possam ser ajustadas fora da função
    return [hspeed, vspeed];
}
