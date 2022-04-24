/// @description Insert description here
// You can write your code in this editor

if (deflected)
{
	
	with(other)
	{
		instance_destroy(self)
		part_particles_create(obj_part_setup.particleSystem, other.x, other.y, obj_part_setup.particleType_Blood, 10)
	}
	instance_destroy(self)
}
