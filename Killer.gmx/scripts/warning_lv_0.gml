//turn by noise
if(place_meeting(x, y, obj_player_noise)){
    //如果不在视线内
    noise = instance_place(x, y, obj_player_noise);
    if( sign(noise.x - x) != face && turn_delay){ //背后有声音
        alarm[0] = 0.3 * room_speed;
        turn_delay = 0;
    } 
}

//如果在視線範圍內，則記錄目標位置
if(sign(obj_player.x - x ) == face && distance_to_object(obj_player) < sight_range){
    aim_x = obj_player.x;
    aim_y = obj_player.y;
}else{
    aim_x = 0;
    aim_y = 0;
}

//如果在開火範圍內，則開火
if( sign(obj_player.x - x ) == face && distance_to_object(obj_player) < fire_range){
    if(obj_player.hp > 0)
    
    state = state_enemy_fire;
}


