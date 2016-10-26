var door;

if(place_meeting(x+hspd, y , obj_door_r)){
    
   door = instance_place(x + hspd, y, obj_door_r);
   if(door.isOpen = 0){
   
        while(!place_meeting(x+sign(hspd), y, obj_door_r)){
            x += sign(hspd);
        }
        hspd = 0;
   
   } 

}
