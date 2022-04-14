// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){

	//Move in four directions when pressing arrow keys.
	if (keyboard_check(ord("A")) && place_free(x - spd, y))	x-= spd;
	if (keyboard_check(ord("D")) && place_free(x + spd, y))	x+= spd;
	if (keyboard_check(ord("W")) && place_free(x, y - spd))		y-= spd;
	if (keyboard_check(ord("S")) && place_free(x, y + spd)) {
		y+= spd;
	}
	else {
	}
	
		//Change player direction state
	if (keyboard_check(ord("A")))	player_direction = PLAYERDIRECTION.LEFT;
	if (keyboard_check(ord("D")))	player_direction = PLAYERDIRECTION.RIGHT;
	if (keyboard_check(ord("W")))	player_direction = PLAYERDIRECTION.UP;
	if (keyboard_check(ord("S")))	player_direction = PLAYERDIRECTION.DOWN;
}