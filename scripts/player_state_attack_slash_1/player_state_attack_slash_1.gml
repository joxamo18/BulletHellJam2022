// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function player_state_attack_slash_1(){
	var slash_sprite = spr_player_slash_1_up
	var slash_mask = spr_player_slash_1_up_hb

	switch (player_direction)
	{
		case PLAYERDIRECTION.LEFT:
			slash_sprite = spr_player_slash_1_left
			slash_mask = spr_player_slash_1_left_hb
			if (place_free(x - slash_speed, y))
			{
				x -= slash_speed
			}
			break
		case PLAYERDIRECTION.RIGHT:
			slash_sprite = spr_player_slash_1_right
			slash_mask = spr_player_slash_1_right_hb
			if (place_free(x + slash_speed, y))
			{
				x += slash_speed
			}
			break
		case PLAYERDIRECTION.UP:
			slash_sprite = spr_player_slash_1_up
			slash_mask = spr_player_slash_1_up_hb
			if (place_free(x, y - slash_speed))
			{
				y -= slash_speed
			}

			break
		case PLAYERDIRECTION.DOWN:
			slash_sprite = spr_player_slash_1_down
			slash_mask = spr_player_slash_1_down_hb
			if (place_free(x, y + slash_speed))
			{
				y += slash_speed
			}
			break
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

						hp = hp - player_slash_damage;
						if (hp <= 0)
						{
							instance_destroy(hit_id)
						}
					}
					
				}
			}
		}
		ds_list_destroy(hit_by_attack_now)
	}
	
	mask_index = spr_player
}