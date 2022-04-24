/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_player)
{
	return
}
if (obj_player.y + obj_player.sprite_height < y + sprite_height)
{
    moving_alpha = clamp(moving_alpha - .05, 0, 1)
}
else
{
	moving_alpha = clamp(moving_alpha + .05, 0, 1)
}
shader_set(shader_to_use)
shader_set_uniform_f(handler_alpha, moving_alpha)
shader_reset()