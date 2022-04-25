draw_set_halign(fa_center);


//Draw regular text
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(fnt_smaller);

if (instance_exists(obj_player) and global.gamestate != "start")
{
	
	draw_text(
		camera_get_view_x(view_camera[0])+64,
		camera_get_view_y(view_camera[0])+16,"Ammo");
	
	with(obj_player)
	{


		for (i = 1; i <= obj_player.uzi_ammo; i++)
		{
			draw_sprite(
				spr_big_bullet, 
				0, 
				camera_get_view_x(view_camera[0])+32 + i * 3, 
				camera_get_view_y(view_camera[0])+54)
		}
	
	}
		
	draw_text(
		camera_get_view_x(view_camera[0])+140,
		camera_get_view_y(view_camera[0])+16,"Stamina");
		
	with(obj_player)
	{

		var amount_of_bars = floor(sword_stamina / sword_depletion_rate)

		for (i = 1; i <= amount_of_bars; i++)
		{
			draw_sprite(
				spr_stamina_bar, 
				0, 
				camera_get_view_x(view_camera[0])+127 + i * 5, 
				camera_get_view_y(view_camera[0])+50)
		}
	
	}
	
	
	draw_text(
		camera_get_view_x(view_camera[0])+216,
		camera_get_view_y(view_camera[0])+16, "Health")

	with(obj_player)
	{


		for (i = 1; i <= obj_player.hp; i++)
		{
			draw_sprite(
				spr_heart, 
				0, 
				camera_get_view_x(view_camera[0])+175 + i * 20, 
				camera_get_view_y(view_camera[0])+54)
		}
	
	}
		
}

if (global.gamestate == "start")
{
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_title);
	
	draw_text(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/4 + 32, "Luna, Vampire Slayer")
	//Draw regular text

	
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+camera_get_view_width(view_camera[0])/2,"Press Enter");
	
	draw_set_font(fnt_smallest);
	draw_text(
		camera_get_view_x(view_camera[0])+128,
		camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0]) * 3/4),"Music by Himeko Katagiri (Seifuku Sound)");
		
	draw_text(
		camera_get_view_x(view_camera[0])+128,
		camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0]) * 3/4) + 32,"Programming and Art by Joseph Morales");

	draw_text(
			camera_get_view_x(view_camera[0])+128,
			camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0]) * 3/4) + 64,"Additional Art by Niku Wolf");

}

if (global.gamestate == "boss_intro")
{
	draw_set_alpha(warning_alpha);

	
	draw_set_colour(c_red);
	draw_set_font(fnt_warning);
	
	draw_text(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/4 + 32, "Warning")

	
	warning_alpha -= .75 * (delta_time / 1000000)
	if (warning_alpha <= 0)
	{
		warning_alpha = 1
	}
	draw_set_alpha(1);
}

if (!instance_exists(obj_player) and global.gamestate == "continue")
{
//Draw regular text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"Continue? Press Enter");
}

if (global.gamestate == "boss_beaten")
{
	beaten_game_alpha +=  .25 * (delta_time / 1000000)
	var _guiW = room_width;
	var _guiH = room_height;
	
	
	draw_set_alpha(beaten_game_alpha);
	draw_set_color(c_white);
	draw_rectangle(0, 0, _guiW, _guiH, 0)
	
	if (beaten_game_alpha >= 1)
	{
		audio_play_sound(snd_ambient_ending, 0, true);
	}
	
}

if (audio_is_playing(snd_ambient_ending))
{
	final_text_alpha += .10 * (delta_time / 1000000)
	draw_set_alpha(final_text_alpha);;
	draw_set_colour(c_black);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"You did your best. Now allow yourself to rest.");
}

if (instance_exists(obj_gattling_gun))
{
	with(obj_gattling_gun)
	{

		//draw_path(path, x, y, 1)

		var cam_x = camera_get_view_x(view_camera[0]);
		var cam_y = camera_get_view_y(view_camera[0]);
		var cam_width = camera_get_view_width(view_camera[0])

		var healthbar_x = cam_x + ((cam_width / 2) - (healthbar_width / 2));
		var healthbar_y = cam_y + 20
		var healthbar_background_x = cam_x + ((cam_width / 2) - (healthbar_width / 2)) - 1;
		var healthbar_background_y = cam_y + 12

		direction = point_direction(0, 0, 1, 0)

		if (in_combat)
		{

			draw_sprite_ext(spr_health_background, 1, healthbar_background_x + lengthdir_x(0, direction), healthbar_background_y + lengthdir_y(0, direction), 1, 1, direction, c_grey, 1)
	
			for (var i = 0; i < healthbar_width * (hp / hp_max); i = i + 2)
			{
				draw_sprite_ext(spr_health_increment, 1, healthbar_x + lengthdir_x(i, direction), healthbar_y + lengthdir_y(i, direction), 1, 1, direction, c_red, 1)
			}
		}
	}
}

