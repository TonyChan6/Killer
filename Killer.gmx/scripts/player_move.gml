scr_get_input();

dir = -k_left + k_right;


if(k_down){
    hspd = dir * spd / 2;
}else if(k_shift){
    hspd = dir * spd * 1.5;
}else{
    hspd = dir * spd;
}

if(dir > 0 )
    face = 1;
else if (dir < 0)
    face = -1;



player_move_check_door();




//水平运动
if (!place_meeting(x+hspd, y, obj_platform)) {
    x += hspd;
}
//贴近墙壁
else{
    while(!place_meeting(x+sign(hspd), y, obj_platform)){
        x += sign(hspd);
    }
    hspd = 0;
}

add_gravity();
