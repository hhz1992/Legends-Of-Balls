///scr_player_move(x,y)
//Makes the player move and changes direction accordingly

if (!place_meeting(x+argument0,y+argument1,obj_block)) {
    x += argument0;
    y += argument1;
    direction = point_direction(0,0,argument0,argument1);
}
