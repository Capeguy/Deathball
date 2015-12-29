activator = argument0;
otherPlayer = argument1;
global.affectedPlayer = 0;
global.affectedPlayerSpeed = 0;
if (activator == obj_shinobi || activator == obj_shinobi2) {
    global.affectedPlayerSpeed = otherPlayer.playerspeed;
    otherPlayer.playerspeed  = otherPlayer.playerspeed * 0.5;
    alarm[0] = fps * 5;   
    global.affectedPlayer = otherPlayer.playerNum;
} else if (activator == obj_jane || activator == obj_jane2) {
    global.affectedPlayerHitStrength = otherPlayer.hitStrength;
    otherPlayer.hitStrength  = otherPlayer.hitStrength * 5;
    alarm[5] = fps * 7;   
    global.affectedPlayer = otherPlayer.playerNum;
} else if (activator == obj_iman || activator == obj_iman2) {
    with(obj_stone) {
        image_alpha = 0;
    }
    alarm[7] = fps * 3;   
}
