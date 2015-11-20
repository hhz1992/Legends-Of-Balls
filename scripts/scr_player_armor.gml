///scr_player_armor()


if(global.armor==1){

    if(global.weapon_armor_flag == 1){
        global.weapon_armor_flag = 0;
        global.weapon_armor_equip = 1;
        alarm[1]=200;
         alarm[0] = 300;
    
    }
}
