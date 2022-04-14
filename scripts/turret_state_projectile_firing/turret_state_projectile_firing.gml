// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turret_state_projectile_firing(){
 
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
			var creator_id = id;
			with (bullet)
			{
				direction = desiredAngle + 85
				speed = 5
				object_who_spawned_me = creator_id
			}
		}
	
		fire_cooldown = fire_rate
	}

	else {
		fire_cooldown -= _dt
	}
		
	scr_spinningTurret_pong_movement()
}