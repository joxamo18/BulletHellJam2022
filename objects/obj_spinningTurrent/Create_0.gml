/// @description Insert description here
// You can write your code in this editor

hp = 175
hp_max = hp

healthbar_width = 200

rotation_speed = 5
laser_rotation_speed = 1
movement_speed_x = 32
movement_speed_y = 32
move_to_center_speed_x = 128
move_to_center_speed_y = 128
x_direction = 1
y_direction = 1
centerX = 0
centerY = 0
_dt = 0

fire_rate = 0.2
fire_cooldown = 0

max_rotation_timer = 10;
left_direction_timer = max_rotation_timer;
right_direction_timer = 0;

turretsA = [45, 135, 225, 315]; 
turretsB = [0, 90, 180, 270];  


lasers = [];
bat_spawners = [];

max_beam_firing_cooldown = 20
beam_firing_cooldown = max_beam_firing_cooldown 
max_beam_firing_timer = 10
beam_firing_timer = max_beam_firing_timer

rotationDirection = ""
current_state = TURRET_STATE.PROJECTILE_FIRING
at_bat_location = false

enum TURRET_STATE {
	PROJECTILE_FIRING,
	PROJECTILE_BEAM,
	PROJECTILE_BAT,
	DEAD
}
