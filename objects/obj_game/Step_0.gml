/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_enter) && global.gamestate == "start")
{
	audio_play_sound(panthress, 0, false);
	global.gamestate = "intro";
	with (obj_player)
	{
		state = PLAYERSTATE.GAME_CONTROLLED
	}
}


if (global.gamestate == "intro")
{	
	with (obj_player)
	{
		state = PLAYERSTATE.GAME_CONTROLLED
		y -= spd 
	}
}

if (global.gamestate == "boss_intro")
{
	if (player_moving_forward)
	{
		with (obj_player)
		{
			y -= 16 * delta_time / 1000000
		}
	}
	
	if (start_boss_warning_timer && boss_warning_timer > 0)
	{
		boss_warning_timer -= delta_time / 1000000
		
		if (boss_warning_timer <= 0)
		{
			global.gamestate = "boss_fight"
			with (obj_player)
			{
				state = PLAYERSTATE.FREE
			}
			
			with (obj_spinningTurrent)
			{
				in_combat = true
			}
		}
	}
}