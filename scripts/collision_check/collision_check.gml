// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_check(){
	if (deflected == true)
	{
		if (collision_point(x, y, obj_soldier, false, false))
		{
			with(collision_point(x, y, obj_soldier, false, false))
			{

				audio_play_sound(snd_bullet_impact,0,false)
				hp -= 2
			}
			instance_destroy(self)
		}
		
		if (collision_point(x, y, obj_gattling_gun, false, false))
		{
			with(collision_point(x, y, obj_gattling_gun, false, false))
			{
				hp -= 2
				audio_play_sound(snd_bullet_impact,0,false)
			}
			instance_destroy(self)
		}
		
		if (collision_point(x, y, obj_spinningTurrent, false, false))
		{
			with(collision_point(x, y, obj_spinningTurrent, false, false))
			{
				hp -= 1
				audio_play_sound(snd_bullet_impact,0,false)
			}
			instance_destroy(self)
		}
	}
}