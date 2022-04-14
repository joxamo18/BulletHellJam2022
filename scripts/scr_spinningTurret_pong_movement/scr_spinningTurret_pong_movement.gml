// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spinningTurret_pong_movement(){
	var lay_id = layer_get_id("wall_tiles")
	var map_id = layer_tilemap_get_id(lay_id)
	
	var _dt = delta_time / 1000000
	var to_move_x = movement_speed_x * _dt
	var to_move_y = movement_speed_y * _dt
	
	if (x_direction < 0)
	{
		var left_top = tilemap_get_at_pixel(map_id, bbox_left - to_move_x, bbox_top)
		var left_bot = tilemap_get_at_pixel(map_id, bbox_left - to_move_x, bbox_bottom)
	
		if (left_top == 0 and left_bot == 0)
		{
			x -= to_move_x
		}
		else 
		{
			x+= to_move_x
			x_direction = x_direction * -1;
		}
	}
	
	if (x_direction > 0)
	{
		var right_top = tilemap_get_at_pixel(map_id, bbox_right + to_move_x, bbox_top)
		var right_bot = tilemap_get_at_pixel(map_id, bbox_right + to_move_x, bbox_bottom)
	
		if (right_top == 0 and right_bot == 0)
		{
			x += to_move_x
		}
		else 
		{
			x -= to_move_x
			x_direction = x_direction * -1;

		}
	}
	
	if (y_direction < 0)
	{
		var up_left = tilemap_get_at_pixel(map_id, bbox_left, bbox_top - to_move_y)
		var up_right = tilemap_get_at_pixel(map_id, bbox_right, bbox_top - to_move_y)
	
		if (up_left == 0 and up_right == 0)
		{
			y -= to_move_y
		}
		else 
		{
			y_direction = y_direction * -1;
		}
	}
	
	if (y_direction > 0)
	{
		var bot_left = tilemap_get_at_pixel(map_id, bbox_left, bbox_bottom + to_move_y)
		var bot_right = tilemap_get_at_pixel(map_id, bbox_right, bbox_bottom + to_move_y)
	
		if (bot_left == 0 and bot_right == 0)
		{
			y += to_move_y
		}
		else 
		{
			show_debug_message("hit bottom")
			y_direction = y_direction * -1;
		}
	}
	
	
	
}