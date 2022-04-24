/// @description Insert description here
// You can write your code in this editor
//Reduce enemy hitpoints on collision
with(other)
{
instance_destroy();
}
part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_Blood, 10)
audio_play_sound(snd_bullet_impact,0,false)
//destroy the bullet
instance_destroy();