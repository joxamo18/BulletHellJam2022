/// @description Insert description here
// You can write your code in this editor
var _dt = delta_time / 1000000

if (bbox_top >  camera_get_view_y(view_camera[0]))
{
	can_fire = true
}

if (ammo_reload_timer > 0)
{
	ammo_reload_timer -= _dt
	
	if (ammo_reload_timer <= 0)
	{
		ammo = max_ammo
		ammo_reload_timer = 0
	}
}




if (arm_instance == false) 
{
	arm_instance = instance_create_layer(x, y, layer, obj_soldier_arm);
	arm_instance.creator = id
}
else 
{
	if (instance_exists(obj_player))
	{
		soldier_axis_direction()
	}
}


if (hp <= 0)
{
	with(arm_instance)
	{
		instance_destroy()
	}
	instance_destroy()
}