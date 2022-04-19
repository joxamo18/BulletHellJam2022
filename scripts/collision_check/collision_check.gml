// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_check(){
	if (deflected == true)
	{
		if (collision_point(x, y, obj_soldier, false, false))
		{
			with(collision_point(x, y, obj_soldier, false, false))
			{
				show_debug_message("hit soldier")
				hp -= 4
				show_debug_message(hp)
			}
			instance_destroy(self)
		}
		
		if (collision_point(x, y, obj_gattling_gun, false, false))
		{
			with(collision_point(x, y, obj_gattling_gun, false, false))
			{
				hp -= 4
			}
			instance_destroy(self)
		}
		
		if (collision_point(x, y, obj_spinningTurrent, false, false))
		{
			with(collision_point(x, y, obj_gattling_gun, false, false))
			{
				hp -= 4
			}
			instance_destroy(self)
		}
	}
}