// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_taking_damage(){
	sprite_index = spr_player
	var _dt = delta_time / 1000000
	
	if (flashAlpha = 0)
	{
		flashAlpha = 1;
	}
	else
	{
		flashAlpha -= 0.05;
	}
	
	if (hit_cooldown > 0)
	{
		hit_cooldown -= _dt
		if (hit_cooldown <= 0)
		{
			flashAlpha = 0
			state = PLAYERSTATE.FREE
		}
	}
	else
	{
		flashColor = c_red;
		hit_cooldown = hit_cooldown_rate
		hp--;
	}
	
	if (hit_cooldown <= player_hit_freeze)
	{
		flashColor = c_white;
		spd = basespd; 
		player_movement()
	}
	else
	{
		y += 5
	}
}