/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
var angle = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = angle + 90

x = creator.x + 10
y = creator.y

	if (angle < 135 && angle > 45) //aiming up
	{ 
		

			var player_depth = creator.depth
			depth = player_depth + 1

		
	}
	else {

			var player_depth = creator.depth
			depth = player_depth - 1
		
	}

var v_x = obj_player.x - x
var v_y = obj_player.y - y
var v_length = sqrt(sqr(v_x) + sqr(v_y))

v_x = v_x / v_length
v_y = v_y / v_length

with (creator)
{
	var _dt = delta_time / 1000000
	
	if (fire_cooldown <= 0 && in_combat && ammo > 0)
	{
		var bullets = instance_create_layer(x + v_x * 16, y + v_y * 16, "lay_bullets", obj_enemyBullet)
		var creator_id = id
		with (bullets)
		{
			direction = point_direction(x , y, obj_player.x, obj_player.y)
			speed = 15
			object_who_spawned_me = creator_id
		}
	
		ammo--;
		if (ammo == 0)
		{
			ammo_reload_timer = ammo_reload_rate
		}
	
		fire_cooldown = fire_rate
	}
	else
	{
		fire_cooldown -= _dt
	}
}