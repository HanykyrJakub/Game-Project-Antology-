if (instance_exists(follow)){
xTo = follow.x;
yTo = follow.y;
}

x+= (xTo - x) / 25;
y+= (xTo - x) / 25;

x=clamp(x,view_w_half,room_height-view_h_half);
y=clamp(y,view_w_half,room_height-view_h_half);

camera_set_view_pos(cam,x - view_w_half,y - view_h_half);