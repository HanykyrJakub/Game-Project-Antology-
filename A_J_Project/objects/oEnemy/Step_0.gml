vsp = vsp + grv;
//jump
if (place_meeting(x,y+1,oWall))
{
	vsp = 0;
}
//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
//vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	y = y + sign(vsp);
	}
	vsp = 0
}
y = y + vsp;

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1;else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy0;
	}
	else
	{
		sprite_index = sEnemyR
	}
}