playerNum = argument0;
item = argument1;
with (obj_item_controller) {
    itemsOnField--;
}
//show_message(object_get_name(item.object_index));
if (playerNum == 1) {
    player = global.p1;
} else if(playerNum == 2){
    player = global.p2;
}

switch (object_get_name(item.object_index)) {
    case "obj_item_sonic":
        global.affectedPlayerSpeed = player.playerspeed;
        player.playerspeed = player.playerspeed * 1.5;
        alarm[7] = fps * 5;   
        global.affectedPlayer = playerNum;    
        break;
    case "obj_item_snail":
        global.affectedPlayerSpeed = player.playerspeed;
        player.playerspeed = player.playerspeed * 0.8;
        alarm[7] = fps * 5;   
        global.affectedPlayer = playerNum;       
        break;
    case "obj_item_convert":
        if (playerNum == 1) {
            with (obj_ball_tutorial) {
                sprite_index = spr_stone_player1;
            }
        } else {
            with (obj_ball_tutorial) {
                sprite_index = spr_stone_player2;            
            }
        }
        global.affectedPlayer = playerNum;       
        break;
    case "obj_item_abilityplus":
        //global.affectedPlayerAPRate = player.aprate;
        //player.aprate = player.aprate * 2;
        //alarm[8] = fps * 5;
        //global.affectedPlayer = playerNum;       
        break;       
}
with(item){ instance_destroy();}
