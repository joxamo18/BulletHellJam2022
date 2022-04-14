// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_slash_movement_direction(obj_instance){
	
	if (!instance_exists(obj_instance) || obj_instance.object_index == obj_gattling_gun)
	{
		return
	}
	var player_slash_speed = slash_speed
	switch (player_direction)
	{
		case PLAYERDIRECTION.LEFT:
			if (place_free(obj_instance.x - slash_speed, obj_instance.y))
			{
				with (obj_instance) 
				{
					path_end();
					x -= player_slash_speed + 2
					
				}
			}
			break
		case PLAYERDIRECTION.RIGHT:
			if (place_free(obj_instance.x + slash_speed, obj_instance.y))
			{
				with (obj_instance) 
				{
					path_end();
					x += player_slash_speed + 2
					
				}
			}
			break
		case PLAYERDIRECTION.UP:
			if (place_free(obj_instance.x, obj_instance.y - slash_speed))
			{
				with (obj_instance) 
				{
					path_end();
					y -= player_slash_speed + 2
					
				}

			}

			break
		case PLAYERDIRECTION.DOWN:
			if (place_free(obj_instance.x, obj_instance.y + slash_speed))
			{
				with (obj_instance) 
				{
					path_end();
					y += player_slash_speed + 2
					
				}
					
			}
			break
	}
}