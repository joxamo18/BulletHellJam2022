/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player) and bbox_bottom  > obj_player.bbox_bottom)
{
	with (obj_game)
	{
		player_moving_forward = false
		start_boss_warning_timer = true
	}
	
	instance_destroy()
}