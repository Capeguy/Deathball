if(!global.loaded)
{
    if(global.player1 == obj_shinobi)
    {
        idle_sprite = spr_shinobi_idle;
        run_sprite = spr_shinobi_run;
        jump_sprite = spr_shinobi_jump;
        attack_sprite = spr_shinobi_attack;
        ap_sprite = spr_shinobi_glide;
        dead_sprite = spr_shinobi_dead;
    }
    else if (global.player1 == obj_jane)
    {
        idle_sprite = spr_jane_idle;
        run_sprite = spr_jane_run;
        jump_sprite = spr_jane_jump;
        attack_sprite = spr_jane_attack;
        ap_sprite = spr_jane_shoot;
        dead_sprite = spr_jane_dead;
    }
    else if (global.player1 == obj_iman)
    {
        idle_sprite = spr_iman_idle;
        run_sprite = spr_iman_run;
        jump_sprite = spr_iman_jump;
        attack_sprite = spr_iman_attack;
        ap_sprite = spr_iman_attack;
        dead_sprite = spr_iman_dead;
    }
    if(global.player2 == obj_shinobi2)
    {
        idle_sprite = spr_shinobi_idle;
        run_sprite = spr_shinobi_run;
        jump_sprite = spr_shinobi_jump;
        attack_sprite = spr_shinobi_attack;
        ap_sprite = spr_shinobi_glide;
        dead_sprite = spr_shinobi_dead;
    }
    else if (global.player2 == obj_jane2)
    {
        idle_sprite = spr_jane_idle;
        run_sprite = spr_jane_run;
        jump_sprite = spr_jane_jump;
        attack_sprite = spr_jane_attack;
        ap_sprite = spr_jane_head;
        dead_sprite = spr_jane_dead;
    }
    else if (global.player1 == obj_iman)
    {
        idle_sprite = spr_iman_idle;
        run_sprite = spr_iman_run;
        jump_sprite = spr_iman_jump;
        attack_sprite = spr_iman_attack;
        ap_sprite = spr_iman_attack;
        dead_sprite = spr_iman_dead;
    }
    global.loaded = true;
}
