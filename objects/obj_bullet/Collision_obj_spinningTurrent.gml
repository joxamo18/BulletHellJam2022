/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp--;
}

if (instance_exists(obj_player) and obj_player.sword_stamina < 1)
{
	var stamina_to_add = obj_player.sword_increase_from_kill_rate
	if (obj_player.sword_stamina + stamina_to_add > obj_player.max_stamina)
	{
		stamina_to_add =  obj_player.max_stamina - obj_player.sword_stamina;
	}
	obj_player.sword_stamina += stamina_to_add
}

audio_play_sound(snd_bullet_impact, 0 , false)
part_particles_create(obj_part_setup.particleSystem, other.x, other.y, obj_part_setup.particleType_Blood, 10)
instance_destroy()