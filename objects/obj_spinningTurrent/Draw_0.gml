/// @description Insert description here
// You can write your code in this editor
draw_self()

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

	draw_sprite_ext(spr_health_background, 1, healthbar_background_x + lengthdir_x(0, direction), healthbar_background_y + lengthdir_y(0, direction), 1, 1, direction, c_yellow, 1)
	
	for (var i = 0; i < healthbar_width * (hp / hp_max); i = i + 2)
	{
		draw_sprite_ext(spr_health_increment, 1, healthbar_x + lengthdir_x(i, direction), healthbar_y + lengthdir_y(i, direction), 1, 1, direction, c_yellow, 1)
	}
}