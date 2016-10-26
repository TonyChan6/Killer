//重力
if(!place_meeting(x, y+1, obj_platform)){
    vspd += grav; 
}else{
    vspd = 0;
}

//垂直运动
if(!place_meeting(x, y+vspd, obj_platform)){
    y += vspd;
}
//贴近地面
else{  
    while(!place_meeting(x, y+sign(vspd), obj_platform)){
       y += sign(vspd);
    }    
    vspd = 0;
}
