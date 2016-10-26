dir = sign(aim_x - x);




if(aim_x != 0 && (x - aim_x)*dir < spd*dir && distance_to_object(global.player) > fire_range){
    x += dir * spd;
    show_debug_message( (x - aim_x)*dir );
}
