// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_axis_direction(){
	var mouse_direction = point_direction(x,y,mouse_x,mouse_y)
	
	if (mouse_direction >= 45 and mouse_direction < 135)
	{
		player_direction = PLAYERDIRECTION.UP
		if (keyboard_check(ord("S")) || keyboard_check(ord("W"))) //aiming forward
		{

			sprite_index = spr_player_face_up_walk_u_d
		}
		else if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
		{

			sprite_index = spr_player_face_up_walk_l_r
		}
		else
		{
			if (mouse_check_button(mb_left)) 
			{
				sprite_index = spr_player_face_up_idle_AIMING
			}
			else sprite_index = spr_player_face_up_idle
		}
		return
	}
	else if (mouse_direction >= 135 and mouse_direction < 225) //aiming left
	{
		player_direction = PLAYERDIRECTION.LEFT
		if (keyboard_check(ord("S")) || keyboard_check(ord("W")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_left_walk_u_d_AIMING
			}
			else sprite_index = spr_player_face_left_walk_u_d
		}
	
		else if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_left_walk_l_r_AIMING
			}
			else sprite_index = spr_player_face_left_walk_l_r
		}
		else 
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_left_idle_AIMING
			}
			else sprite_index = spr_player_face_left_idle
		}
		return
	}
	else if (mouse_direction >= 225 and mouse_direction < 315) //aiming down
	{
		player_direction = PLAYERDIRECTION.DOWN
		if (keyboard_check(ord("S")) || keyboard_check(ord("W")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_down_walk_u_d_AIMING
			}
			else sprite_index = spr_player_face_down_walk_u_d
		}
	
		else if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_down_walk_l_r_AIMING
			}
			else sprite_index = spr_player_face_down_walk_l_r
		}
		else
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_down_idle_AIMING
			}
			else sprite_index = spr_player_face_down_idle
		}
		return
	}
	else { //aiming right
		
		player_direction = PLAYERDIRECTION.RIGHT
		if (keyboard_check(ord("S")) || keyboard_check(ord("W")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_right_walk_u_d_AIMING
			}
			else sprite_index = spr_player_face_right_walk_u_d
		}
	
		else if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
		{
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_right_walk_l_r_AIMING
			}
			else sprite_index = spr_player_face_right_walk_l_r
		}
		else {
			if (mouse_check_button(mb_left))
			{
				sprite_index = spr_player_face_right_idle_AIMING
			}
			else sprite_index = spr_player_face_right_idle
		}
		return
	}

}