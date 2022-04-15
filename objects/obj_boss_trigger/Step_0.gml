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
		player_moving_forward = true
	}
	instance_destroy()
}