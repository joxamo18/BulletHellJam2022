/// @description Insert description here
// You can write your code in this editor
if (bbox_bottom  > obj_player.bbox_bottom)
{
	show_debug_message("it works")
	with (obj_game)
	{
		player_moving_forward = false
		start_boss_warning_timer = true
	}
	
	instance_destroy()
}