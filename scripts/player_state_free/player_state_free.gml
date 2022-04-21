// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_free(){

	
	if (mouse_check_button(mb_right)) {
		state = PLAYERSTATE.ATTACK_SLASH_1
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