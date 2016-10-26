image_speed = .3;
sprite_index = spr_gunman_fire;

/*if(image_index == 1){
    with(obj_player){
        hp -= 1;
    }
}*/




if(fire_cd == 0){
    with(obj_player){
        if(hp>0)
        hp -= 1;
    }
    alarm[1] = .3 * room_speed;
}

//refresh the fire cooldown
fire_cd = 1;
if(obj_player.hp <=0 || distance_to_object(obj_player) > fire_range){
    state = state_enemy_move;
}
  
