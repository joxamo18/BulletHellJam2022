/// @description Insert description here
// You can write your code in this editor
show_debug_message(current_state)
if (current_state == TURRET_STATE.PROJECTILE_BEAM and other.tag == "beam_goal")
{
	at_beam_location = true
	sprite_index = spr_beam_attack_max
}


if (current_state == TURRET_STATE.PROJECTILE_BAT and other.tag == "bat_goal" and !at_bat_location)
{
	var vX = bat_spawn_location.x - x
	var vY = bat_spawn_location.y - y
	
	try {
		var length = sqrt((vX * vX) + (vY * vY));
	}
	catch(error)
	{
		throw error
	}
	
	if (length > 4)
	{
		return
	}
	
	at_bat_location = true
	sprite_index = spr_max_bat_attack_2
	
	audio_play_sound(snd_bat_summoning_layer_1,0,true)
	audio_play_sound(snd_bat_summoning_layer_2,0,true)
	//audio_play_sound(snd_bat_summoning_layer_3,0,true)
	
	for (var i = 0; i < array_length(bat_spawners); i++)
	{
		bat_spawners[i].can_spawn = true
	}
}

