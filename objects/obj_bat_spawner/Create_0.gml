/// @description Insert description here
// You can write your code in this editor
timer = 50;		//duration between spawns (frames)
timer_min = 50;	//minimum duration between spawns 
count = 0; //tracking how many times to spawn enemy
alarm[0] = timer;	//set alarm to trigger spawn

var bat = instance_create_layer(x,y,"lay_enemy", enemy_to_spawn);
var newPath = path_to_follow
var absolute = absolute_path
with (bat)
{
	path_start(newPath, 10, path_action_stop,absolute)
}