/// @description Insert description here
// You can write your code in this editor

	var layerID = layer_get_id("wall_tiles");
	var tiles = layer_tilemap_get_id(layerID)
	
	if (rotating == true)
	{
		show_debug_message("rotating")
		image_angle += 25
	}
	
	if (tilemap_get_at_pixel(tiles, x, y) || collision_point(x, y, obj_wall, false, false) ||  collision_point(x, y, obj_table, false, false))
	{
		part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_DeflectionSpark_Small, 5)
		instance_destroy(self)
	}
	
	if (collision_point(x, y, obj_player, false, false))
	{
		with(obj_player)
		{
			player_state_taking_damage()
		}
		instance_destroy(self)
	}
	
	collision_check()
