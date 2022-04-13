/// @description Insert description here
// You can write your code in this editor

if (bbox_bottom  > camera_get_view_y(view_camera[0]))
{
	instance_exists(enemy_instance)
		enemy_instance.in_combat = true
}