/// @description Insert description here
// You can write your code in this editor


alarm[0] = timer;

if (count < max_spawn - 1 && global.gamestate != "start" && can_spawn)
{
	count++;
	var bat = instance_create_layer(x,y,"lay_enemy", enemy_to_spawn);
	var newPath = path_to_follow
	var absolute = absolute_path
	with (bat)
	{
		path_start(newPath, 10, path_action_stop, absolute)
	}
}
