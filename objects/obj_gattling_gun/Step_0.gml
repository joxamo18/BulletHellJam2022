/// @description Insert description here
// You can write your code in this editor
var _dt = delta_time / 1000000

if (fire_cooldown <= 0 && in_combat)
{
	var bullets = instance_create_layer(x,y,"lay_bullets", obj_enemyBullet)
	with (bullets)
	{
		direction = point_direction(x , y, obj_player.x, obj_player.y)
		speed = 15
	}
	
	fire_cooldown = fire_rate
}
else
{
	fire_cooldown -= _dt
}


