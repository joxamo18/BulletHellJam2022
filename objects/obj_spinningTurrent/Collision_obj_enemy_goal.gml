/// @description Insert description here
// You can write your code in this editor
show_debug_message(current_state)
if (current_state == TURRET_STATE.PROJECTILE_BEAM and other.tag == "beam_goal")
{
	at_beam_location = true
	sprite_index = spr_beam_attack_max
}


if (current_state == TURRET_STATE.PROJECTILE_BAT and other.tag == "bat_goal")
{
	at_beam_location = true
	sprite_index = spr_max_bat_attack_2
	
	for (var i = 0; i < array_length(bat_spawners); i++)
	{
		bat_spawners[i].can_spawn = true
	}
}

