// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_free(){

	
	if (mouse_check_button(mb_right) && sword_stamina >= sword_depletion_rate) {
		state = PLAYERSTATE.ATTACK_SLASH_1
		sword_stamina -= sword_depletion_rate
		audio_play_sound(snd_sword_whip, 0, false)
	}
	if (mouse_check_button(mb_right) && sword_stamina < sword_depletion_rate and !audio_is_playing(snd_out_of_breathe))
	{
		audio_play_sound(snd_out_of_breathe,0 ,false)
	}

	if (!instance_exists(obj_player_arm) and mouse_check_button(mb_left)) 
	{
		instance_create_layer(x, y, layer, obj_player_arm);
	}
	else if (instance_exists(obj_player_arm) and !mouse_check_button(mb_left))
	{
		instance_destroy(obj_player_arm)
	}




	//tick down cooldown every frame
	if (cooldown > 0) cooldown--; 

	player_movement()	
	player_axis_direction()

	
	//angle sprite towards mouse cursor


}