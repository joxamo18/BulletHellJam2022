/// @description Insert description here
// You can write your code in this editor
var _dt = delta_time / 1000000


if (ammo_reload_timer > 0)
{
	ammo_reload_timer -= _dt
	
	if (ammo_reload_timer / ammo_reload_rate < .3)
	{
		audio_play_sound(snd_minigun_windup,0,false)
	}
	
	if (ammo_reload_timer <= 0)
	{
		ammo = max_ammo
		ammo_reload_timer = 0
		audio_play_sound(snd_minigun_windup_loop,0,true)
		audio_play_sound(snd_mini_gun_reflection,0,true)
	}
}




if (arm_instance == false && instance_exists(obj_player)) 
{
	arm_instance = instance_create_layer(x, y, layer, obj_gattling_gun_arm);
	arm_instance.creator = id
}
else 
{
	if (instance_exists(obj_player))
	{
		gattling_gun_axis_direction() 
	}
}


if (hp <= 0)
{
				
			audio_stop_sound(snd_mini_gun_reflection)
			audio_stop_sound(snd_minigun_windup)
			audio_stop_sound(snd_minigun_windup_loop)
	with(arm_instance)
	{
		instance_destroy()
	}
	instance_destroy()
}

