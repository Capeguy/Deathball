activator = argument0;
otherPlayer = argument1;
global.affectedPlayer = 0;
global.affectedPlayerSpeed = 0;
if(activator == obj_shinobi || activator == obj_shinobi2)
{
    global.affectedPlayerSpeed = otherPlayer.playerspeed;
    otherPlayer.playerspeed  = otherPlayer.playerspeed * 0.5;
    alarm[0] = fps * 5;   
    global.affectedPlayer = otherPlayer.playerNum;
    
    //after a while, adjust speed to normal;
}
