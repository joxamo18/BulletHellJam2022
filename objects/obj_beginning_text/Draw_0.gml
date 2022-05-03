/// @description Insert description here
// You can write your code in this editor

	var _guiW = room_width;
	var _guiH = room_height;
	
	
if (starting)
{
	beginning_alpha += 1 * delta_time / 1000000
	
	draw_set_alpha(beginning_alpha);
	draw_set_color(c_white);
	draw_rectangle(0, 0, _guiW, _guiH, 0)
	
	draw_set_alpha(beginning_alpha);;
	draw_set_colour(c_black);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/4 + camera_get_view_width(view_camera[0])/8,
		camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"This is where your trip starts. Enjoy the ride.");

	if (beginning_alpha >= 4)
	{
		beginning_alpha = 1
		starting = false
	}
}
else
{
	beginning_alpha -= 1 * delta_time / 1000000
	draw_set_alpha(beginning_alpha);
	draw_set_color(c_white);
	draw_rectangle(0, 0, _guiW, _guiH, 0)
	
	draw_set_alpha(beginning_alpha);;
	draw_set_colour(c_black);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/4 + camera_get_view_width(view_camera[0])/8,
		camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"This is where your trip starts. Enjoy the ride.");

	if (beginning_alpha <= -2)
	{
		room_goto(Main)
	}
}
window_set_cursor(cr_none)
