// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gattling_gun_axis_direction(){
	var soldier_look_direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	if (soldier_look_direction >= 45 and soldier_look_direction < 135)
	{

		if (goal_reached == false) //aiming up
		{

			sprite_index = spr_gattling_gun_walking_up
		}

		else
		{

			sprite_index = spr_gattling_gun_idle_FACE_UP
		}
		return
	}
	else if (soldier_look_direction >= 135 and soldier_look_direction < 225) //aiming left
	{
		if (goal_reached == false) //aiming left
		{

			sprite_index = spr_gattling_gun_walking_down_FACE_LEFT
		}

		else
		{

			sprite_index = spr_gattling_gun_idle_FACE_LEFT
		}
		return
	}
	else if (soldier_look_direction >= 225 and soldier_look_direction < 315) //aiming down
	{
		if (goal_reached == false) //aiming forward
		{

			sprite_index = spr_gattling_gun_walking_down_FACE_DOWN
		}

		else
		{

			sprite_index = spr_gattling_gun_idle_FACE_DOWN
		}
		return
	}
	else { //aiming right
		if (goal_reached == false) 
		{

			sprite_index = spr_gattling_gun_walking_down_FACE_RIGHT
		}

		else
		{

			sprite_index = spr_gattling_gun_idle_FACE_RIGHT
		}
		return
	}
}