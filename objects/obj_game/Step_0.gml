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
