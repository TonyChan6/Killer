player_move();



// 修改图片朝向
if(face < 0){
    image_xscale = -1;
}else if(face > 0){
    image_xscale = 1;
}


if(!k_down){
    if(hspd != 0){
        image_speed = .15;
        sprite_index = spr_player_run;
    }else{
        image_speed = .3;
        sprite_index = spr_player_idle;
    }
}else{
    if(hspd != 0){
        image_speed = .15;
        sprite_index = spr_player_crouch;
    }else{
        image_speed = 0;
        sprite_index = spr_player_crouch;
        image_index = 0;
    }
}
