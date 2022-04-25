/// @description Insert description here
// You can write your code in this editor
shader_set(sh_grayscale)
draw_self();
shader_reset();


if (flashAlpha > 0)
{
	shader_set(player_hit_flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	shader_reset();
}