// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turret_state_projectile_beam(){

	
	var vX = center_of_field.x - x
	var vY = center_of_field.y - y
	
	try {
		var length = sqrt((vX * vX) + (vY * vY));
	}
	catch(error)
	{
		throw error
	}

	
	vX = vX / length
	vY = vY / length
	

	
	x += vX * move_to_center_speed_x * _dt
	y += vY * move_to_center_speed_y * _dt

	if (!at_beam_location)
	{ 
		return
	}
	audio_stop_sound(snd_beam_power_up)
	
	if !(instance_exists(obj_laser))
	{
		audio_play_sound(snd_beam_firing,0,false)
		audio_play_sound(snd_beam_firing_loop,0,true)
		for (var i = 0; i < array_length(turretsB); i++)
		{
			var new_x = centerX + lengthdir_x(35, turretsB[i])
			var new_y = centerY + lengthdir_y(35, turretsB[i])
		
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
				x = new_x;
				y = new_y;
				direction = desiredAngle + 90
			}
		}
	}
}