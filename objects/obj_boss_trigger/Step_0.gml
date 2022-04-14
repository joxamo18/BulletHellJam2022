/// @description Insert description here
// You can write your code in this editor
if (bbox_bottom  > obj_player.bbox_bottom)
{
	if (instance_exists(obj_spinningTurrent)) {
		enemy_instance.in_combat = true
	}
}