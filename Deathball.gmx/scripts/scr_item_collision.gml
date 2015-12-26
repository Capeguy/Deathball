playerNum = argument0;
item = argument1;
with (obj_item_controller) {
    itemsOnField--;
}
//show_message(object_get_name(item.object_index));
if(playerNum == 1)
{
    player = global.player1;
}
else if(playerNum == 2){
    player = global.player2;
}
if(object_get_name(item.object_index) == "obj_item_sonic")
{
    with(item){ instance_destroy();}
    global.affectedPlayerSpeed = player.playerspeed;
    player.playerspeed = player.playerspeed * 2;
    alarm[2] = fps * 5;   
    global.affectedPlayer = playerNum;
}
else if(object_get_name(item.object_index) == "obj_item_snail")
{
    with(item){ instance_destroy();}
    global.affectedPlayerSpeed = player.playerspeed;
    player.playerspeed = player.playerspeed * 0.5;
    alarm[2] = fps * 5;   
    global.affectedPlayer = playerNum;
}
