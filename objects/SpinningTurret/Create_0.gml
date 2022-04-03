/// @description Insert description here
// You can write your code in this editor


rotation_speed = 5
movement_speed = (room_height - camera_get_view_height(view_camera[0])) / audio_sound_length(panthress)
fire_rate = 0.2
fire_cooldown = 0

max_rotation_timer = 10;
left_direction_timer = max_rotation_timer;
right_direction_timer = 0;

turretsA = [0, 90, 180, 275];  


PROJECTILE_FIRING = "projectile_firing"
current_state = PROJECTILE_FIRING

