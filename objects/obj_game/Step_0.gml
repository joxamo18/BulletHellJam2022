/// @description Insert description here
// You can write your code in this editor

if (global.gamestate == "start")
{
	if (keyboard_check(vk_enter))
	{
		audio_sound_gain(intro_theme_song, 0, 1000);
		//audio_stop_sound(main_theme_song);
		//main_theme_song = audio_play_sound(snd_main_level_theme, 0, false);
		audio_sound_gain(main_theme_song, 1, 500);
		global.gamestate = "intro";
		with (obj_player)
		{
			state = PLAYERSTATE.GAME_CONTROLLED
		}
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
    audio_sound_gain(main_theme_song, 0, 1000);
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
			main_theme_song = audio_play_sound(snd_boss_theme, 0, true);
			audio_sound_gain(warning_sound, 0, 1000);
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

if (global.gamestate == "boss_beaten" and boss_death_sound == 0)
{
	audio_stop_all()
	with (obj_player)
	{
		state = PLAYERSTATE.GAME_CONTROLLED
	}
	
	boss_death_sound = audio_play_sound(snd_boss_defeat, 0 , false)
}

if (!instance_exists(obj_player) and global.gamestate != "continue")
{
	last_game_state = global.gamestate
	global.gamestate = "continue"
	instance_deactivate_all(true)
}

if (global.gamestate == "continue" and keyboard_check(vk_enter))
{
	global.gamestate = last_game_state
	var player = instance_create_layer(
		player_death_location_x,
		player_death_location_y,
		"lay_player",
		obj_player
	)
	
	with (player)
	{
		hp = 3
		hit_cooldown = hit_cooldown_rate;
	}
	
	instance_activate_all()
}
