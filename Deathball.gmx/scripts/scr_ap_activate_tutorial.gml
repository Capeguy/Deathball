activator = argument0;
otherPlayer = argument1;
global.affectedPlayer = 0;
global.affectedPlayerSpeed = 0;
global.ap_activated = 1;
if (activator == global.p1) {
    global.affectedPlayerSpeed = otherPlayer.playerspeed;
    otherPlayer.playerspeed  = otherPlayer.playerspeed * 0.5;
    alarm[0] = fps * 5;   
    global.affectedPlayer = otherPlayer.playerNum;
} else if (activator == global.p2) {
    with(obj_ball_tutorial) {
        image_alpha = 0;
    }
    alarm[7] = fps * 1;   
}
