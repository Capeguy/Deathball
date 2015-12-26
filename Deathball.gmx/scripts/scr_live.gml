playerNum = argument0;
hud_controller = argument1;

switch(playerNum)
{
    //if player 1 dies
    case 1:
        if(global.player1Lives >=0)
            hud_controller.live_p1.image_index = global.player1Lives;           
        break;
    //if player 2 dies    
    case 2:
        if(global.player2Lives >=0)
            hud_controller.live_p2.image_index = global.player2Lives;
        break;
    default:
    
        break;
}
