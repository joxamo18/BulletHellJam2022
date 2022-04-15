/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player) and bbox_bottom  > obj_player.bbox_top)
{
	global.gamestate = "boss_intro"
	with (obj_player)
	{
		state = PLAYERSTATE.GAME_CONTROLLED
	}
	with (obj_game)
	{
		warning_sound = audio_play_sound(snd_warning, 0, false);
		player_moving_forward = true
	}
	
	with (obj_camera)
	{
		movespd = camera_get_view_y(view_camera[0]) / audio_sound_length(snd_warning)
		deltaTimeCounter = 0;
	}
	instance_destroy()
}