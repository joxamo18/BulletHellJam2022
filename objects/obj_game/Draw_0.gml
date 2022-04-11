draw_set_halign(fa_center);


//Draw regular text
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(fnt_smaller);

if (instance_exists(obj_player))
{
	
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/4,
		camera_get_view_y(view_camera[0])+16,"Ammo");
	
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/4,
		camera_get_view_y(view_camera[0])+54,obj_player.uzi_ammo)
	
	
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+16, "health")

	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+54, obj_player.hp)
}

if (global.gamestate == "start")
{
	//Draw regular text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+camera_get_view_width(view_camera[0])/2,"Press Enter");
}

	



if (keyboard_check(vk_enter) && global.gamestate == "start")
{
	audio_play_sound(panthress, 0, false);
	global.gamestate = "main_level";
}