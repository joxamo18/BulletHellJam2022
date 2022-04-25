/// @description Insert description here
// You can write your code in this editor
shader_set(sh_grayscale)
draw_self();
shader_reset();

if ( sword_stamina < sword_depletion_rate)
{
	centerX = x-sprite_get_xoffset(sprite_index)+(sprite_get_width(sprite_index)/2)
	
	draw_sprite(spr_out_of_stamina, 0, centerX, y + sprite_get_height(sprite_index) / 2 + sprite_get_height(spr_out_of_stamina)/2)
}
if (sword_stamina >= sword_depletion_rate and state == PLAYERSTATE.ATTACK_SLASH_1) {
	var amount_of_bars = floor(sword_stamina / sword_depletion_rate)
	centerX = x-sprite_get_xoffset(sprite_index)+(sprite_get_width(sprite_index)/2)
	for (i = 1; i <= amount_of_bars; i++)
	{
		draw_sprite(spr_stamina_bar, 0, centerX + i * 5, y + sprite_get_height(sprite_index) / 2 + sprite_get_height(spr_stamina_bar)/2)
	}
	
}

if (flashAlpha > 0)
{
	shader_set(player_hit_flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	shader_reset();
}