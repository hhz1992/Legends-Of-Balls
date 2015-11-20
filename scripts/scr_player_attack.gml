///scr_player_attack()

if(global.sword==1){
    if(!instance_exists(obj_weapon_sword)){
        with (instance_create(obj_player.x,obj_player.y,obj_weapon_sword)) {
            image_angle = obj_player.direction-90;
        }
    }
}
if(global.gun==1){

    if(global.guncooldown == 0){
        bullet_id = instance_create(x, y, obj_bullet_player);
        bullet_id.direction = obj_player.direction;
        bullet_id.image_angle = obj_player.direction
        bullet_id.speed = 10;
        global.guncooldown = 1;
        alarm[2]=20;
    }
}



if(global.weapon>0){

    if(global.weapon==1 && global.weapon_armor_flag == 1){
        global.weapon_armor_flag = 0;
        global.weapon_armor_equip = 1;
        sprite_index = 1;
        alarm[0]=100;
        alarm[1]=200;
    
    }
}
