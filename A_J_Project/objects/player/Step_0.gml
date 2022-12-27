// player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
// Movement count
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grp;
//jump
if (place_meeting(x,y+1,field)) && (key_jump)
{
 vsp = -7;
}
// horizontal collision
if (place_meeting(x + hsp,y, field))
{
	while(!place_meeting(x+sign(hsp),y,field)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
// vertical collision
if (place_meeting(x + vsp,y, field))
{
	while(!place_meeting(x+sign(vsp),y,field)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;