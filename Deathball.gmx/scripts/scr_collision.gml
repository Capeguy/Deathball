stone = argument0;
player = argument1;
if (stone.attackedStone) {
    with (stone) {
        move_bounce_all(true);
    }
}

timeDiff = 400;
currenttime = current_time;
global.hitstrength = 0;
if (currenttime - global.lastCollision  > timeDiff) {
    audio_play_sound(snd_ball_hit, 5, false);
    global.lastCollision = currenttime;
    if (player.isAttacking) {
        audio_play_sound(snd_bat_hit, 5, false);
        with (player) {
            if(playerNum == 1) {
                global.hitstrength = player.hitStrength;
                global.player1ap += player.aprate;
                if (global.player1ap > 10)
                    global.player1ap = 10;
                scr_ap(1, obj_hud_controller);
                with(stone) {
                    sprite_index = spr_stone_player1;
                    attackedStone = true;
                }
            }
            else if (playerNum == 2) {
                global.hitstrength = player.hitStrength;
                global.player2ap += player.aprate;
                if (global.player2ap > 10)
                    global.player2ap = 10;                
                scr_ap(2, obj_hud_controller);
                with(stone) {
                    sprite_index = spr_stone_player2;
                    attackedStone = true;
                }
            }
        }
        with (stone) { 
            if (speed < 100) {
                speed += 10 + 10 * global.hitstrength;
            } 
        }
    } else {
        if (!global.resetGame) {
            if (stone.sprite_index == spr_stone_player1 && player.playerNum == 2) {
                player.dead = true;
                global.player2Lives--;
                scr_live(2, obj_hud_controller);
                with(stone){attackedStone = false;}
            } else if(stone.sprite_index == spr_stone_player2 && player.playerNum == 1) {
                player.dead = true;
                global.player1Lives--;
                scr_live(1, obj_hud_controller);
                with(stone){attackedStone = false;}
            }  
        }
    }
} else {
    adj = abs((stone.x - player.x));
    if (adj != 0) {
        theta = arctan((abs(stone.y - player.y)) / (adj));;
        global.resultantAngle = 0;
    
        if (player.y > stone.y && player.x > stone.x) {
            global.resultantAngle = 180 + theta;
        } else if (player.y < stone.y && player.x < stone.x) {
            global.resultantAngle = 360 - theta;
        } else if (player.y < stone.y && player.x > stone.x) {
            global.resultantAngle = 180 - theta;
        } else if (player.y > stone.y && player.x < stone.x) {
            global.resultantAngle = theta;
        } else if (player.y == stone.y && player.x > stone.x) {
            global.resultantAngle = 180;
        } else if (player.y == stone.y && player.x < stone.x) {
            global.resultantAngle = 0;
        } else if (player.x == stone.x && player.y > stone.y) {
            global.resultantAngle = 270;
        } else if (player.x == stone.x && player.y < stone.y) {
            global.resultantAngle = 90;
        } else if (player.x == stone.x && player.y == stone.y) {
            global.resultantAngle = random(360);
        } else {
            show_message("Unhandled collision");
            show_message("Player (" + string(player.x) + ", " + string(player.y) + ") Stone (" + string(stone.x) + ", " + string(stone.y) + ")");
        }
        with(stone)
        {
            // direction = radtodeg(global.resultantAngle);
            //move_outside_solid(direction, 100);
            // move_contact_solid(direction, 50);
        }
    }
}
