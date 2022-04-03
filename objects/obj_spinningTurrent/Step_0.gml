/// @description Insert description here
// You can write your code in this editor

var centerX = x-sprite_get_xoffset(sprite_index)+(sprite_get_width(sprite_index)/2)
var centerY = y-sprite_get_yoffset(sprite_index)+(sprite_get_height(sprite_index)/2)
 
var _dt = delta_time / 1000000
var rotationDirection = ""

if (left_direction_timer > 0) 
{
	left_direction_timer -= _dt
	rotationDirection = "left"
	if (left_direction_timer <= 0)
		right_direction_timer = max_rotation_timer
}
if (right_direction_timer > 0) 
{
	right_direction_timer -= _dt
	rotationDirection = "right"
	if (right_direction_timer <= 0)
		left_direction_timer = max_rotation_timer
}

if (current_state == PROJECTILE_FIRING)
{
	if (fire_cooldown <= 0)
	{
		for (var i = 0; i < array_length(turretsA); i++)
		{
			var new_x = centerX + lengthdir_x(50, turretsA[i])
			var new_y = centerY + lengthdir_y(50, turretsA[i])
		
			if (rotationDirection = "left")
				turretsA[i] += rotation_speed;
			else
				turretsA[i] -= rotation_speed;


			//instance_create_layer(x,y,"lay_bullets",obj_enemyBullet);
			var bullet = instance_create_layer(new_x, new_y,"lay_bullets",obj_enemyBullet);
			var v1 = point_direction(centerX, centerY, centerX, centerY - 5)
			var v2 = point_direction(centerX, centerY, new_x, new_y)
			var desiredAngle = angle_difference(v2, v1)
	
			with (bullet)
			{
				direction = desiredAngle + 85
				speed = 10
			}
		}
	
		fire_cooldown = fire_rate
	}

	else {
	  fire_cooldown -= _dt
	}
}

if (current_state == PROJECTILE_BEAM)
{
	if !(instance_exists(obj_laser))
	{
		for (var i = 0; i < array_length(turretsB); i++)
		{
			var new_x = centerX + lengthdir_x(50, turretsB[i])
			var new_y = centerY + lengthdir_y(50, turretsB[i])
		
			if (rotationDirection = "left")
				turretsB[i] += rotation_speed;
			else
				turretsB[i] -= rotation_speed;

			
			lasers[i] = instance_create_layer(new_x, new_y, "lay_bullets", obj_laser)
			//instance_create_layer(x,y,"lay_bullets",obj_enemyBullet);
			var v1 = point_direction(centerX, centerY, centerX, centerY - 5)
			var v2 = point_direction(centerX, centerY, new_x, new_y)
			var desiredAngle = angle_difference(v2, v1)
	
			with (lasers[i])
			{
				direction = desiredAngle
			}
		}
	}
	else 
	{
		for (var i = 0; i < array_length(turretsB); i++)
		{
			var new_x = centerX + lengthdir_x(50, turretsB[i])
			var new_y = centerY + lengthdir_y(50, turretsB[i])
		
			if (rotationDirection = "left")
				turretsB[i] += laser_rotation_speed;
			else
				turretsB[i] -= laser_rotation_speed;

			
			//instance_create_layer(x,y,"lay_bullets",obj_enemyBullet);
			var v1 = point_direction(centerX, centerY, centerX, centerY - 5)
			var v2 = point_direction(centerX, centerY, new_x, new_y)
			var desiredAngle = angle_difference(v2, v1)
	
			with (lasers[i])
			{
				direction = desiredAngle
			}
		}
	}
}
var move = 1 * movement_speed * _dt
y-= move



