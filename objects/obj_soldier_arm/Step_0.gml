/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
var angle = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = angle + 90

x = creator.x + 10
y = creator.y

	if (angle < 135 && angle > 45) //aiming up
	{ 
		

			var player_depth = creator.depth
			depth = player_depth + 1

		
	}
	else {

			var player_depth = creator.depth
			depth = player_depth - 1
		
	}
	
//var arm_x = x
//var arm_y = y

//var v_x = mouse_x - x
//var v_y = mouse_y - y
//var v_length = sqrt(sqr(v_x) + sqr(v_y))

//v_x = v_x / v_length
//v_y = v_y / v_length

//with(creator)
//{
	
//	//Fire when pressing the left mouse button
//	if (mouse_check_button(mb_left)) 
//	{
//		//reduce speed to account for recoil
//		spd = 2;
//		if (cooldown == 0)
//		{
//			//reduce ammo of special weapon if necessary

		
//			//fire normal weapon (1 bullet)
//			if (uzi_ammo > 0)
//			{
//				uzi_ammo--;
//				instance_create_layer(arm_x + v_x * 20,arm_y + v_y * 20,"lay_bullets",obj_bullet);
//			}
			
//			//set cooldown to current weaponspeed
//			cooldown = fire_rate;
//		}
//	}
//	else 
//	{
//		//restore speed to default
//		spd = basespd; 
//	}
//}
