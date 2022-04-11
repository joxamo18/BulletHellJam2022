// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_free(){
	//Fire when pressing the left mouse button
	if (mouse_check_button(mb_left)) 
	{
		//reduce speed to account for recoil
		spd = 2;
		if (cooldown == 0)
		{
			//reduce ammo of special weapon if necessary
			ammo--;
			if (ammo < 1) weapon = 0;
		
			//fire normal weapon (1 bullet)
			if (weapon == 0)
			{
				bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
			}
			else
			{
				//fire special weapon (3 bullets split)
				instance_create_layer(x,y,"lay_bullets",obj_bullet2);
				bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
				with (bullet)
				{
					direction-=15;
				}
				bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
				with (bullet)
				{
					direction+=15;
				}
			}
			//set cooldown to current weaponspeed
			cooldown = fire_rate;
		}
	}
	else 
	{
		//restore speed to default
		spd = basespd; 
	}


	//tick down cooldown every frame
	if (cooldown > 0) cooldown--; 

	//Move in four directions when pressing arrow keys.
	if (keyboard_check(ord("A")))	x-= spd;
	if (keyboard_check(ord("D")))	x+= spd;
	if (keyboard_check(ord("W")))		y-= spd;
	if (keyboard_check(ord("S")))	y+= spd;
	
		//Change player direction state
	if (keyboard_check(ord("A")))	player_direction = PLAYERDIRECTION.LEFT;
	if (keyboard_check(ord("D")))	player_direction = PLAYERDIRECTION.RIGHT;
	if (keyboard_check(ord("W")))	player_direction = PLAYERDIRECTION.UP;
	if (keyboard_check(ord("S")))	player_direction = PLAYERDIRECTION.DOWN;
	
	
	if (mouse_check_button(mb_right)) state = PLAYERSTATE.ATTACK_SLASH_1
	
	//angle sprite towards mouse cursor
	//image_angle = point_direction(x,y,mouse_x,mouse_y);


}