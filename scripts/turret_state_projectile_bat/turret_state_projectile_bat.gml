// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turret_state_projectile_bat(){
	var vX = bat_spawn_location.x - x
	var vY = bat_spawn_location.y - y
	
	try {
		var length = sqrt((vX * vX) + (vY * vY));
	}
	catch(error)
	{
		throw error
	}

	
	vX = vX / length
	vY = vY / length
	
	x += vX * move_to_center_speed_x * _dt
	y += vY * move_to_center_speed_y * _dt
	
}