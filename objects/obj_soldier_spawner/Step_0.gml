/// @description Insert description here
// You can write your code in this editor
if (can_spawn && spawn_counter < spawn_amount)
{
	var soldier = instance_create_layer(x,y,"lay_enemy", obj_soldier);
	var destination = soldier_goal
	var newParent = self
	with (soldier) 
	{
		parent = newParent
		soldier_goal = destination
	}
	spawn_counter++
}