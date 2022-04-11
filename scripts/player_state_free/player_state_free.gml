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

		
			//fire normal weapon (1 bullet)
			if (uzi_ammo > 0)
			{
				uzi_ammo--;
				instance_create_layer(x,y,"lay_bullets",obj_bullet);
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

	player_movement()	
	
	if (mouse_check_button(mb_right)) state = PLAYERSTATE.ATTACK_SLASH_1
	
	//angle sprite towards mouse cursor
	//image_angle = point_direction(x,y,mouse_x,mouse_y);


}