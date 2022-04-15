// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_taking_damage(){
	
	var _dt = delta_time / 1000000
	
	if (flashAlpha = 0)
	{
		flashAlpha = 1;
	}
	else
	{
		flashAlpha -= 0.05;
	}
	
	if (hit_cooldown > 0) //has player been hit? If so, let them cooldown
	{
		hit_cooldown -= _dt
		if (hit_cooldown <= 0)
		{
			flashAlpha = 0
		}
	}
	else //has not been hit yet
	{
		flashColor = c_red;
		hit_cooldown = hit_cooldown_rate
		hp--;
	}
	
	if (hit_cooldown <= player_hit_freeze)
	{
		flashColor = c_white;
		if (state == PLAYERSTATE.KNOCKED_BACK)
		{
			spd = basespd; 
			state = PLAYERSTATE.FREE
		}
	}
	else
	{
		state = PLAYERSTATE.KNOCKED_BACK
	}
}