{
    var device;
    var mx;
    var my;
    for(device = 0 ; device <= 4; device+=1){
        mx = device_mouse_x(device);
        my = device_mouse_y(device);
        if (device_mouse_check_button(device, mb_left)) {
            if(place_meeting(mx, my, obj_left)){
                scr_player_move(-3,0);
            }
            if(place_meeting(mx, my, obj_right)){
                scr_player_move(3,0);
            }
            if(place_meeting(mx, my, obj_up)){
                scr_player_move(0,-3);
            }
            if(place_meeting(mx, my, obj_down)){
                scr_player_move(0,3);
            }
            if(place_meeting(mx, my, obj_attackbutton)){
                scr_player_attack();
            }
        }
    }
}            
