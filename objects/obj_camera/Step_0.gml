//slowly decay any applied shake
shake *= 0.9;



//hspd = approach(hspd, move, accel)
//screenshake
var cam = view_camera[0] 

var _dt = delta_time / 1000000;


if (deltaTimeCounter < audio_sound_length(panthress) && global.gamestate == "main_level")
{
	deltaTimeCounter += _dt;
	var move = -1 * movespd * _dt
	camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake) + move) 
}

if (deltaTimeCounter < audio_sound_length(snd_warning) && global.gamestate == "boss_intro")
{
	deltaTimeCounter += _dt;
	var move = -1 * movespd * _dt
	camera_set_view_pos(cam,camera_get_view_x(cam)+random_range(-shake,shake),camera_get_view_y(cam)+random_range(-shake,shake) + move) 
}