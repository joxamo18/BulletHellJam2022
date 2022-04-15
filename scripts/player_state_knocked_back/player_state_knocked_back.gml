// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_knocked_back(){
	sprite_index = spr_player
	if (place_free(x, y + spd))
	{
		y += 5
	}
}