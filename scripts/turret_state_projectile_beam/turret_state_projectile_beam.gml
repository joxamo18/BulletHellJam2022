// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turret_state_projectile_beam(){
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