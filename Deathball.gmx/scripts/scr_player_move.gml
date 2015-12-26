isAttacking = false;
image_speed = 0.8;
if(keyboard_check(vk_f1)) // Hax
{
    global.player1ap = 10;
    global.player2ap = 10;
    scr_ap(1, obj_hud_controller);
    scr_ap(2, obj_hud_controller);
    global.player1Lives = 5;
    global.player2Lives = 5;
    scr_live(1, obj_hud_controller);
    scr_live(2, obj_hud_controller);
}

if (dead)
{
    if (sprite_index != dead_sprite) {
        sprite_index = dead_sprite;
        image_index = 0;
    }
    if (image_index >= image_number-1) {
        image_speed = 0;
        if (global.player1Lives != 0 && global.player2Lives != 0) {
            global.resetGame = true;
        }
    }
} else if(canmove && !dead)
{
    if(keyboard_check(right)) // && place_free(x+playerspeed,y) this doesnt work
    {
        image_xscale = abs(image_xscale);
        sprite_index = run_sprite;
        //x += playerspeed;
    }
    if(keyboard_check(left)) // && place_free(x-playerspeed,y)
    {
        image_xscale = -abs(image_xscale);
        sprite_index = run_sprite;
        //x -= playerspeed;
    }
    if(keyboard_check(jump))
    {
        sprite_index = jump_sprite;
        //y -= jumpspeed;
    }
    if(keyboard_check(special))
    {
        if (playerNum == 1) {
            if (global.player1ap >= 9) {
                sprite_index = ap_sprite;
                global.player1ap = 0;
                scr_ap(1, obj_hud_controller);
                scr_ap_activate(global.player1, global.player2);
            }
        } else if (playerNum == 2) {
            if (global.player2ap >= 9) {
                sprite_index = ap_sprite;
                global.player2ap = 0;
                scr_ap(2, obj_hud_controller);
                scr_ap_activate(global.player2, global.player1);
            }
        }
    }
    if(keyboard_check(attack))
    {
        sprite_index = attack_sprite;
        isAttacking = true;
        //move_bounce_all(false);
    }
    else
    {
        isAttacking = false;
    }
    if(keyboard_check_released(right || left))
    {
        sprite_index = idle_sprite;
    }
    
    
    key_right = keyboard_check(right);
    key_left = -keyboard_check(left);
    key_jump = keyboard_check_pressed(jump);
    
    //React to inputs
    move = key_left + key_right;
    hsp = move * movespeed * self.playerspeed;
    if (vsp < 10) vsp += grav;
    
    if (place_meeting(x,y+1,obj_ground))
    {
        vsp = key_jump * -jumpspeed 
    }
    
    //Horizontal Collision for ground
    if (place_meeting(x+hsp,y,obj_ground))
    {
        while(!place_meeting(x+sign(hsp),y,obj_ground))
        {
            x += sign(hsp);
        }
        hsp = 0;
    }
    x += hsp;
    
    //Vertical Collision for ground
    if (place_meeting(x,y+vsp,obj_ground))
    {
        while(!place_meeting(x,y+sign(vsp),obj_ground))
        {
            y += sign(vsp);
        }
        vsp = 0;
    }
    y += vsp;
    
/*
    // Collide with stone
    
    //Horizontal Collision
    if (place_meeting(x+hsp,y,obj_stone))
    {
        obj_stone.direction += 180;
    }
    
    //Vertical Collision
    if (place_meeting(x,y+vsp,obj_ground))
    {
        obj_stone.direction += 180;
    }
*/  
}
