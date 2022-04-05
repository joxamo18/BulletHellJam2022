/// @description Insert description here
// You can write your code in this editor

	var layerID = layer_get_id("Walls");
	var tiles = layer_tilemap_get_id(layerID)
	
	if (collision_point(x, y, obj_player, false, false) || tilemap_get_at_pixel(tiles, x, y) || collision_point(x, y, obj_wall, false, false))
	{
		instance_destroy(self)
	}