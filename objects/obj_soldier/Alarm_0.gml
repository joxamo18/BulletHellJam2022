/// @description Update
// You can write your code in this editor

path_delete(path)
path = path_add()

target_x = soldier_goal.x
target_y = soldier_goal.y

mp_grid_path(obj_pathfinding.grid, path, x, y, target_x, target_y, true)




path_start(path, 2, path_action_stop, true)

alarm_set(0, 120)