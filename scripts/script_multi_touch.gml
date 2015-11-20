{
    var device;
    var mx;
    var my;
    for(device = 0 ; device <= 4; device+=1){
        mx = device_mouse_x(device);
        my = device_mouse_y(device);
        if (device_mouse_check_button(device, mb_left)) {
            if(place_meeting(mx, my, obj_left)){
            
                if(global.weapon_armor_equip==1)
                    sprite_index = spr_player_move_left_armor;
                else sprite_index = spr_player_move_left
                scr_player_move(-3,0);
            }
            if(place_meeting(mx, my, obj_right)){
              if(global.weapon_armor_equip==1)
                    sprite_index = spr_player_move_right_armor;
               else sprite_index = spr_player_move_right
                scr_player_move(3,0);
            }
            if(place_meeting(mx, my, obj_up)){
                
              if(global.weapon_armor_equip==1)
                    sprite_index = spr_player_move_back_armor;
               else sprite_index = spr_player_move_back
                scr_player_move(0,-3);
            }
            if(place_meeting(mx, my, obj_down)){
              if(global.weapon_armor_equip==1)
                    sprite_index = spr_player_move_down_armor;
               else   sprite_index = spr_player_move_down
                scr_player_move(0,3);
            }
            if(place_meeting(mx, my, obj_attackbutton)){
                scr_player_attack();
            }
        }
        
          if (device_mouse_check_button_released(device, mb_left)) {
          
              if(place_meeting(mx, my, obj_up)){
               if(global.weapon_armor_equip==1)
                     sprite_index = spr_player_static_back_armor;
                else
                    sprite_index = spr_player_static_back;
              }else{
                if(global.weapon_armor_equip==1)
                     sprite_index = spr_player_static_armor;
                else

                 sprite_index = spr_player_static;
                }
          
          }
        
        
        
    }
}            
