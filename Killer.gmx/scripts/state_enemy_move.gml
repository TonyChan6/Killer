
add_gravity();


// 修改图片朝向
if(face < 0){
    image_xscale = -1;
}else if(face > 0){
    image_xscale = 1;
}


if(hspd != 0){
    image_speed = .15;
    sprite_index = spr_player_run;
}else{
    image_speed = .3;
    sprite_index = spr_player_idle;
}

//如果有目標
if(aim_x != 0 ){
    enemy_move();   
}
