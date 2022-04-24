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
//destroy the bullet
instance_destroy();