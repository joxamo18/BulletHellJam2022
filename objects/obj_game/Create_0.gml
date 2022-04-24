/// @description initialise score

global.myscore = 0;
global.gamestate = "start"

last_game_state = ""
player_moving_forward = false

start_boss_warning_timer = false
boss_warning_timer = 3

main_theme_song = audio_play_sound(snd_main_level_theme, 0, true);
audio_sound_gain(main_theme_song, 0, 0);
intro_theme_song = audio_play_sound(snd_intro_loop, 0, true);

boss_death_sound = 0
warning_sound = ""
warning_alpha = 1
beaten_game_alpha = 0

player_death_location_x = 0
player_death_location_y = 0
