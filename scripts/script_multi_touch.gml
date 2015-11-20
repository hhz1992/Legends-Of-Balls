{
    var device;
    var mx;
    var my;
    for(device = 0 ; device <= 4; device+=1){
        mx = device_mouse_x(device);
        my = device_mouse_y(device);
        if (device_mouse_check_button(device, mb_left)) {
            if(place_meeting(mx, my, obj_left)){
                sprite_index = spr_player_move_left
                scr_player_move(-3,0);
            }
            if(place_meeting(mx, my, obj_right)){
                sprite_index = spr_player_move_right
                scr_player_move(3,0);
            }
            if(place_meeting(mx, my, obj_up)){
                sprite_index = spr_player_move_back
                scr_player_move(0,-3);
            }
            if(place_meeting(mx, my, obj_down)){
                sprite_index = spr_player_move_down
                scr_player_move(0,3);
            }
            if(place_meeting(mx, my, obj_attackbutton)){
                scr_player_attack();
            }
        }
        
          if (device_mouse_check_button_released(device, mb_left)) {
          
              if(place_meeting(mx, my, obj_up)){
                sprite_index = spr_player_static_back;
              }else{
                 sprite_index = spr_player_static;
                }
          
          }
        
        
        
    }
}            
