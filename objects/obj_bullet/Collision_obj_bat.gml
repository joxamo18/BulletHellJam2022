/// @description Insert description here
// You can write your code in this editor
//Reduce enemy hitpoints on collision
with(other)
{
instance_destroy();
}

if (obj_player.sword_stamina < 1)
{
	var stamina_to_add = obj_player.sword_increase_from_kill_rate
	if (obj_player.sword_stamina + stamina_to_add > obj_player.max_stamina)
	{
		stamina_to_add =  obj_player.max_stamina - obj_player.sword_stamina;
	}
	obj_player.sword_stamina += stamina_to_add
}

part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_Blood, 10)
audio_play_sound(snd_bullet_impact,0,false)
//destroy the bullet
instance_destroy();