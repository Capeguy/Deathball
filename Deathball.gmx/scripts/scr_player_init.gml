scr_sprite_config();


playerNum = argument0;

playerspeed = 1;
jumpspeed = 20;
landed = false;
canmove = true;
canattack = true;
isattacking = false;
ishurting = 0;
attackspeed = 10;
dead = false;

if(!global.charaStatsLoaded)
{
    if (global.player1 == obj_shinobi) 
    {
        global.player1.playerspeed = 2.5;
        global.player1.hitStrength = 1.0;
        global.player1.abilityPoints = 10;
    }
    else if (global.player1 == obj_jane) 
    {
        global.player1.playerspeed = 1;
        global.player1.hitStrength = 1.5;
        global.player1.abilityPoints = 10;
    }
    else if (global.player1 == obj_iman) 
    {
        global.player1.playerspeed = 1;
        global.player1.hitStrength = 1;
        global.player1.abilityPoints = 20;
    }
    global.charaStatsLoaded = true;
}
else
{
    if(global.player2 == obj_shinobi2)
    {
        global.player2.playerspeed = 2.5;
        global.player2.hitStrength = 1.0;
        global.player2.abilityPoints = 10;
    }
    else if(global.player2 == obj_jane2)
    {
        global.player2.playerspeed = 1;
        global.player2.hitStrength = 1.5;
        global.player2.abilityPoints = 10;
    }
    else if (global.player1 == obj_iman2) 
    {
        global.player1.playerspeed = 1;
        global.player1.hitStrength = 1;
        global.player1.abilityPoints = 20;
    }
}

switch(playerNum)
{
    case 1: 
        right = ord('D');
        left = ord('A');
        jump = ord('W');
        attack = ord('S');
        special = ord('R');    
    break;

    case 2:
        right = vk_right;
        left = vk_left;
        jump = vk_up;
        attack = vk_down;
        special = vk_shift;
        break;
           
    default:
        break;
}
