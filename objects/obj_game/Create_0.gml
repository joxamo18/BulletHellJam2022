/// @description initialise score

global.myscore = 0;
global.gamestate = "start"

player_moving_forward = false

start_boss_warning_timer = false
boss_warning_timer = 3

main_theme_song = audio_play_sound(snd_intro_loop, 0, true);

warning_sound = ""
warning_alpha = 1