// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function player_state_attack_slash_1(){
	var slash_sprite = spr_player_slash_1_up
	var slash_mask = ""
	var prev_mask = mask_index
	
	var v_x = mouse_x - x
	var v_y = mouse_y - y
	var v_length = sqrt(sqr(v_x) + sqr(v_y))

	v_x = v_x / v_length
	v_y = v_y / v_length
	
	switch (player_direction)
	{
		case PLAYERDIRECTION.LEFT:
			if (current_slash == 2)
			{
				slash_sprite = spr_player_slash_1_left
			}
			else 
			{
				slash_sprite = spr_player_slash_2_left
			}
			slash_mask = spr_player_slash_1_left_hb
			//if (place_free(x - slash_speed, y))
			//{
			//	x = x + v_x * slash_speed
			//	y = y + v_y * slash_speed
			//}
			break
		case PLAYERDIRECTION.RIGHT:
			if (current_slash == 2)
			{
				slash_sprite = spr_player_slash_1_right
			}
			else 
			{
				slash_sprite = spr_player_slash_2_right
			}

			slash_mask = spr_player_slash_1_right_hb
			//if (place_free(x + slash_speed, y))
			//{
			//	x += slash_speed
			//}
			break
		case PLAYERDIRECTION.UP:
			if (current_slash == 2)
			{
				slash_sprite = spr_player_slash_1_up
			}
			else 
			{
				slash_sprite = spr_player_slash_2_up
			}
				
			slash_mask = spr_player_slash_1_up_hb
			//if (place_free(x, y - slash_speed))
			//{
			//	y -= slash_speed
			//}

			break
		case PLAYERDIRECTION.DOWN:
			if (current_slash == 2)
			{
				slash_sprite = spr_player_slash_1_down
			}
			else 
			{
				slash_sprite = spr_player_slash_2_down
			}
				
			slash_mask = spr_player_slash_1_down_hb
			//if (place_free(x, y + slash_speed))
			//{
			//	y += slash_speed
			//}
			break
	}
	
	if (place_free(x + v_x * slash_speed, y + v_y * slash_speed))
	{
		x = x + v_x * slash_speed
		y = y + v_y * slash_speed
	}

	if (sprite_index != slash_sprite)
	{
		sprite_index = slash_sprite
		image_index = 0
		ds_list_clear(hit_by_attack)
	}

	mask_index = slash_mask
	for (var k = 0; k < ds_list_size(hit_by_attack); k++)
	{
		var enemy_id = ds_list_find_value(hit_by_attack, k)
		character_slash_movement_direction(enemy_id)
	}
	
	//loop through all enemies and see if hit occurs	
	for (var j = 0; j < array_length(enemy_list); j++)
	{
		var hit_by_attack_now = ds_list_create()
		var hits = instance_place_list(x, y, enemy_list[j], hit_by_attack_now, false)
			
		if (hits > 0)
		{
			for (var i = 0; i < hits; i++)
			{
				var hit_id = ds_list_find_value(hit_by_attack_now, i)
				if (ds_list_find_index(hit_by_attack, hit_id) == -1)
				{
					ds_list_add(hit_by_attack, hit_id)
					var player_slash_damage = slash_damage
					var reflect_queue = sword_reflect_queue
					with (hit_id)
					{

						if (obj_player.uzi_ammo < 20)
						{
							var ammo_to_add = 5
							if (obj_player.uzi_ammo + ammo_to_add > 20)
							{
								ammo_to_add = 20 - obj_player.uzi_ammo;
							}
							obj_player.uzi_ammo += ammo_to_add
						}
						
						if (object_index == obj_enemyBullet)
						{
								part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_DeflectionSpark, 1)
								part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_DeflectionSpark_Small, 5)
								audio_play_sound(ds_queue_head(reflect_queue), 0, false)
								var soundHead = ds_queue_dequeue(reflect_queue)
								show_debug_message(audio_get_name(soundHead))
								ds_queue_enqueue(reflect_queue, soundHead)
								deflected = true
								direction = point_direction(x,y,mouse_x,mouse_y)
								speed = 15
						
							break
						}
						if (!obj_player.has_impact_sound_played)
						{
							obj_player.has_impact_sound_played = true
							audio_play_sound(obj_player.sword_impact_array[random_range(0,2)], 0, false)
						}
						
						hp = hp - player_slash_damage;
					}
					
				}
			}
		}
		ds_list_destroy(hit_by_attack_now)
	}
	
	mask_index = prev_mask
}