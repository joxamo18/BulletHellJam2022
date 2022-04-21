/// @description Insert description here
// You can write your code in this editor
if (in_combat) {
	centerX = x-sprite_get_xoffset(sprite_index)+(sprite_get_width(sprite_index)/2)
	centerY = y-sprite_get_yoffset(sprite_index)+(sprite_get_height(sprite_index)/2)
 
	_dt = delta_time / 1000000

	//managing state changes
	if (hp / hp_max < 0.2 and beam_firing_cooldown > 0)
	{
		if (current_state != TURRET_STATE.PROJECTILE_BAT)
		{
			current_state = TURRET_STATE.PROJECTILE_BAT
			sprite_index = spr_max_bat_attack_1
		}
	}
	else if (beam_firing_cooldown > 0)
	{
		if (current_state == TURRET_STATE.PROJECTILE_FIRING)
		{
			sprite_index = spr_maxis
			at_beam_location = false
		}
		if (instance_exists(obj_laser))
		{

			instance_destroy(obj_laser)
		}
		current_state = TURRET_STATE.PROJECTILE_FIRING
		beam_firing_cooldown -= _dt
	}
	else
	{
		if (current_state == TURRET_STATE.PROJECTILE_FIRING)
		{
			sprite_index = spr_featile_max
		}
		current_state = TURRET_STATE.PROJECTILE_BEAM	
		beam_firing_timer -= _dt;
		if (beam_firing_timer <= 0)
		{
			beam_firing_cooldown = max_beam_firing_cooldown
			beam_firing_timer = max_beam_firing_timer
		}
	}

	if (left_direction_timer > 0) 
	{
		left_direction_timer -= _dt
		rotationDirection = "left"
		if (left_direction_timer <= 0)
			right_direction_timer = max_rotation_timer
	}

	if (right_direction_timer > 0) 
	{
		right_direction_timer -= _dt
		rotationDirection = "right"
		if (right_direction_timer <= 0)
			left_direction_timer = max_rotation_timer
	}

	if (current_state == TURRET_STATE.PROJECTILE_FIRING)
	{
		turret_state_projectile_firing()
	}

	if (current_state == TURRET_STATE.PROJECTILE_BEAM)
	{
		turret_state_projectile_beam()
	}
	
	if (current_state == TURRET_STATE.PROJECTILE_BAT)
	{
		turret_state_projectile_bat()
	}
	
	if (hp <= 0)
	{
		current_state = TURRET_STATE.DEAD
		for (var i = 0; i < array_length(bat_spawners); i++)
		{
			bat_spawners[i].can_spawn = false
		}
		instance_destroy(obj_bat)
		instance_destroy()
	}
}



