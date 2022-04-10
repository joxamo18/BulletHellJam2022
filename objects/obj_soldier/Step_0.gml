/// @description Insert description here
// You can write your code in this editor
var _dt = delta_time / 1000000

if (bbox_top >  camera_get_view_y(view_camera[0]))
{
	can_fire = true
}

if (fire_cooldown <= 0 && can_fire)
{
	var bullets = instance_create_layer(x,y,"lay_bullets", obj_enemyBullet)
	with (bullets)
	{
		direction = point_direction(x , y, obj_player.x, obj_player.y)
		speed = 10
	}
	
	fire_cooldown = fire_rate
}
else
{
	fire_cooldown -= _dt
}


if (hp == 0)
{
	instance_destroy()
}