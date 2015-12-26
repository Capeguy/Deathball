playerNum = argument0;
hud_controller = argument1;

switch(playerNum)
{
    //if player 1 ap inc
    case 1:
        if(global.player1ap >=0)
            hud_controller.ap_p1.image_index = global.player1ap;           
        break;
    //if player 2 ap inc    
    case 2:
        if(global.player2ap >=0)
            hud_controller.ap_p2.image_index = global.player2ap;
        break;
    default:
    
        break;
}
