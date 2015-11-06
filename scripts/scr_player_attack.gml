///scr_player_attack()
//Creates a turkey leg object in player's position (placeholder)

if(!instance_exists(obj_turkeyleg)){
    with (instance_create(obj_player.x,obj_player.y,obj_turkeyleg)) {
        image_angle = obj_player.direction-90;
    }
}
