/// @description Insert description here
// You can write your code in this editor
with(other)
{	
instance_destroy();
}

part_particles_create(obj_part_setup.particleSystem, x, y, obj_part_setup.particleType_Blood, 10)

var bullets = instance_create_layer(x,y,"lay_bullets", obj_enemyBullet)
with (bullets)
{
	direction = point_direction(x , y, obj_player.x, obj_player.y)
	speed = 4
}
audio_play_sound(snd_bullet_impact,0,false)
//destroy the bullet
instance_destroy();