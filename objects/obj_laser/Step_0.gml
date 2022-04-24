/// @description Insert description here
// You can write your code in this editor
//x = obj_spinningTurrent.x
//y = obj_spinningTurrent.y

//direction = point_direction(obj_spinningTurrent.x, obj_spinningTurrent.y, obj_spinningTurrent.x, obj_spinningTurrent.y + 100);


var max_length = 900;
var centerX = x-sprite_get_xoffset(spr_particle_orange)+(sprite_get_width(spr_particle_orange)/2)
var centerY = y-sprite_get_yoffset(spr_particle_orange)+(sprite_get_height(spr_particle_orange)/2)
		
part_particles_create(obj_part_setup.particleSystem, centerX, centerY, obj_part_setup.particleType_Hit, 1)

for (i = 0; i < max_length; i++)
{

	xEnd = x + lengthdir_x(i, direction);
	yEnd = y + lengthdir_y(i, direction);
	length_laser = i;
	
	layerID = layer_get_id("wall_tiles");
	tiles = layer_tilemap_get_id(layerID)
	
	if (collision_point(xEnd, yEnd, obj_player, false, false) || tilemap_get_at_pixel(tiles, xEnd, yEnd))
	{

		var centerX = xEnd-sprite_get_xoffset(spr_particle_orange)+(sprite_get_width(spr_particle_orange)/2)
		var centerY = yEnd-sprite_get_yoffset(spr_particle_orange)+(sprite_get_height(spr_particle_orange)/2)
		part_particles_create(obj_part_setup.particleSystem, centerX, centerY, obj_part_setup.particleType_Hit, 1)
		part_particles_create(obj_part_setup.particleSystem, centerX, centerY, obj_part_setup.particleType_Spark, 10)
		
		if collision_point(xEnd, yEnd, obj_player, false, false)
		{
			isColliding = true
			if(!audio_is_playing(snd_beam_impact))
			{
				audio_play_sound(snd_beam_impact,0,true)
			}
			with(obj_player)
			{
				player_state_taking_damage();
			}
		}
		else 
		{
			isColliding = false
			if(audio_is_playing(snd_beam_impact))
			{
				audio_stop_sound(snd_beam_impact)
			}
		}
		break;
	}
}