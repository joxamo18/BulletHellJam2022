/// @description Insert description here
// You can write your code in this editor
if (can_spawn && spawn_counter < spawn_amount)
{
	show_debug_message("spawning")
	var soldier = instance_create_layer(x,y,"lay_enemy", obj_soldier);
	var destination = soldier_goal
	with (soldier) 
	{
		soldier_goal = destination
	}
	spawn_counter++
}