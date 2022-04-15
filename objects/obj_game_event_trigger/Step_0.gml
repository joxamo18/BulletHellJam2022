/// @description Insert description here
// You can write your code in this editor
if (bbox_bottom  > obj_player.bbox_bottom)
{
	global.gamestate = "main_level"
	with(obj_player)
	{
		state = PLAYERSTATE.FREE
	}
	instance_destroy()
}