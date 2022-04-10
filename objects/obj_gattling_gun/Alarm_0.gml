/// @description Update
// You can write your code in this editor

path_delete(path)
path = path_add()

target_x = gattling_gun_goal.x
target_y = gattling_gun_goal.y

mp_grid_path(obj_pathfinding.grid, path, x, y, target_x, target_y, true)

var move_speed = (room_height - camera_get_view_height(view_camera[0])) / audio_sound_length(panthress)

var _dt = delta_time / 1000000;
var move = move_speed * _dt

if (in_combat)
{
	path_start(path, move, path_action_stop, true)
}


alarm_set(0, 120)