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
	
	draw_text(
		camera_get_view_x(view_camera[0])+64,
		camera_get_view_y(view_camera[0])+54,obj_player.uzi_ammo)
		
	draw_text(
		camera_get_view_x(view_camera[0])+140,
		camera_get_view_y(view_camera[0])+16,"Stamina");
	
	draw_text(
		camera_get_view_x(view_camera[0])+140,
		camera_get_view_y(view_camera[0])+54,obj_player.sword_stamina)
	
	
	draw_text(
		camera_get_view_x(view_camera[0])+216,
		camera_get_view_y(view_camera[0])+16, "Health")

	draw_text(
		camera_get_view_x(view_camera[0])+216,
		camera_get_view_y(view_camera[0])+54, obj_player.hp)
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



