// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_slash_movement_direction(obj_instance){
	
	if (!instance_exists(obj_instance))
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
					x -= player_slash_speed
				}
			}
			break
		case PLAYERDIRECTION.RIGHT:
			if (place_free(obj_instance.x + slash_speed, obj_instance.y))
			{
				with (obj_instance) 
				{
					x += player_slash_speed
				}
			}
			break
		case PLAYERDIRECTION.UP:
			if (place_free(obj_instance.x, obj_instance.y - slash_speed))
			{
				with (obj_instance) 
				{
					y -= player_slash_speed
				}

			}

			break
		case PLAYERDIRECTION.DOWN:
			if (place_free(obj_instance.x, obj_instance.y + slash_speed))
			{
				with (obj_instance) 
				{
					y += player_slash_speed
				}
					
			}
			break
	}
}