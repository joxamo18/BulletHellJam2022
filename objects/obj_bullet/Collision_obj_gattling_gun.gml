/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if (in_combat)
	{
		hp--;	
	}
}
audio_play_sound(snd_bullet_impact,0,false)
part_particles_create(obj_part_setup.particleSystem, other.x, other.y, obj_part_setup.particleType_Blood, 10)
//destroy the bullet
instance_destroy();