/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player) or !instance_exists(creator)) 
{
	return 
}

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
	if (fire_cooldown <= 0 && can_fire && ammo > 0)
	{
		var bullets = instance_create_layer(x + v_x * 16, y + v_y * 16, "lay_bullets", obj_enemyBullet)
		audio_play_sound(snd_soldier_gun_shot,0 ,false)
		var creator_id = id;
		with (bullets)
		{
			sprite_index = spr_bullet4
			direction = point_direction(x, y, obj_player.x, obj_player.y)
			speed = 7
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
